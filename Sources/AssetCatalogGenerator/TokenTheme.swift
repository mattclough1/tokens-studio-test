import Foundation

public enum ThemeAppearance: String, Equatable, Codable {
    case dark, light
}

extension ThemeAppearance: Comparable {
    public static func < (lhs: Self, rhs: Self) -> Bool {
        lhs.rawValue < rhs.rawValue
    }
}

public struct TokenTheme {

    typealias StyleDictionary = [String : Any]
        
    public enum Component: String, CaseIterable {
        case alerts, brand, buttons, dividers, icons, surfaces, text
        
        var childKeys: Set<String>? {
            switch self {
            case .buttons:
                return ["Primary", "Secondary Outline", "Secondary"]
            default:
                return nil
            }
        }
        
        var key: String { rawValue.capitalized }
    }
    
    public init?(fileURL: URL, rootKey: String, appearance: ThemeAppearance) {

        guard let styleDictionary = Self.loadStyleDictionary(fileURL: fileURL, rootKey: rootKey) else {
            return nil
        }
          
        var colors: Set<ColorToken> = []
        
        for component in Component.allCases {
            let componentColors = Self.parseColors(
                forKey: component.key,
                in: styleDictionary,
                component: component,
                appearance: appearance
            )
            colors = colors.union(componentColors)
            
            if let childKeys = component.childKeys, let componentStyleDictionary = styleDictionary[component.key] as? StyleDictionary {
                for key in childKeys {
                    let childComponentColors = Self.parseColors(
                        forKey: key,
                        in: componentStyleDictionary,
                        component: component,
                        appearance: appearance
                    )
                    colors = colors.union(childComponentColors)
                }
            }
        }
        
        self.styleDictionary = styleDictionary
        self.appearance = appearance
        self.name = rootKey
        self.colors = colors
    }
        
    public let appearance: ThemeAppearance
    public let name: String
    public let colors: Set<ColorToken>
    
    public var colorTokenIds: Set<String> {
        let ids = colors.map { $0.id }
        return Set(ids)
    }
    
    // MARK: - Internal
    
    let styleDictionary: StyleDictionary
    
    // MARK: - Private
    
    private static func loadStyleDictionary(fileURL: URL, rootKey: String) -> StyleDictionary? {
        guard
              let data = try? Data(contentsOf: fileURL),
              let json = try? JSONSerialization.jsonObject(with: data) as? StyleDictionary,
              let styleDictionary = json[rootKey] as? StyleDictionary
        else {
            return nil
        }
        
        return styleDictionary
    }
    
    private static func parseColors(
        forKey key: String,
        in styleDictionary: [String : Any],
        component: Component,
        appearance: ThemeAppearance
    ) -> Set<ColorToken> {
        var colorSet = colorTokenSet(forKey: key, in: styleDictionary, component: component, appearance: appearance)
        
        for brand in Brand.allCases {
            let brandDict = styleDictionary["\(brand.rawValue) key"] as? [String : Any]
            brandDict?.forEach {
                guard let colorToken = ColorToken(
                    key: $0,
                    val: $1,
                    component: component,
                    brand: brand,
                    appearance: appearance
                ) else { return }
                colorSet.insert(colorToken)
            }
        }
        return colorSet
    }
    
    private static func colorTokenSet(
        forKey key: String,
        in styleDictionary: [String : Any],
        component: Component,
        appearance: ThemeAppearance
    ) -> Set<ColorToken> {
        var colorSet: Set<ColorToken> = []
        let tokenDict = styleDictionary[key] as? [String: Any]
       
        tokenDict?.forEach {
            guard let colorToken = ColorToken(
                key: $0,
                val: $1,
                component: component,
                appearance: appearance
            ) else { return }
            colorSet.insert(colorToken)
        }
        
        return colorSet
    }
}

extension TokenTheme: Hashable {
    public static func == (lhs: TokenTheme, rhs: TokenTheme) -> Bool {
        lhs.hashValue == rhs.hashValue
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(name)
        hasher.combine(appearance)
    }
}
