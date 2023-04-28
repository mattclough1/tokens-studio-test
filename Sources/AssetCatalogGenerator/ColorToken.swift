import Foundation

public struct ColorToken: Equatable {
    public let id: String
    public let brand: Brand?
    public let appearance: ThemeAppearance
    public let name: String
    public let hexValue: String
    public let component: TokenTheme.Component
    
    public init?(
        key: String,
        val: Any,
        component: TokenTheme.Component,
        brand: Brand? = nil,
        appearance: ThemeAppearance
    ) {
        guard
            let val = val as? [String: String],
            let hex = val["value"],
            let _ = ColorSet.Color(hexValue: hex)
        else {
            return nil
        }
        self.hexValue = hex
        
        
        
        let parsedBrand = Self.parseBrand(from: key)
        let resolvedBrand = brand ?? parsedBrand
        
        var newKey = key
        if let resolvedBrand, parsedBrand == nil {
            newKey = key.addingPrefixIfNeeded(resolvedBrand.rawValue + " ")
        }
        
        self.component = component
        self.brand = resolvedBrand
        self.appearance = appearance
        self.id = newKey.camelCased()
        self.name = newKey
    }
    
    private static func parseBrand(from key: String) -> Brand? {
        for brand in Brand.allCases {
            if key.hasPrefix(brand.rawValue) {
                return brand
            }
        }
        return nil
    }
}

extension ColorToken: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(brand)
        hasher.combine(appearance)
        hasher.combine(hexValue)
    }
}


extension ColorToken: CustomStringConvertible {
    public var description: String {
        [
            "id": id,
            "name": name,
            "brand": String(describing: brand),
            "hexValue": hexValue,
            "appearance": appearance.rawValue
        ].description
    }
}

extension ColorToken: Identifiable {}

extension ColorToken: Comparable {
    public static func < (lhs: ColorToken, rhs: ColorToken) -> Bool {
        lhs.id < rhs.id && lhs.appearance < rhs.appearance
    }
}
