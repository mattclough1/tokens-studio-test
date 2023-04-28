import Foundation

/**
 Represents a [named color type](https://developer.apple.com/library/archive/documentation/Xcode/Reference/xcode_ref-Asset_Catalog_Format/Named_Color.html#//apple_ref/doc/uid/TP40015170-CH59-SW1) for an asset catlog.
 */
public struct ColorSet {
    
    public enum Idiom: String, Codable {
        case iphone
        case ipad
        case mac
        case tv
        case universal
        case watch
    }
    
    public struct Appearance: Codable {
        let appearance: String
        let value: ThemeAppearance
    }
    
    public struct Color: Codable {
        public enum ColorSpace: String, Codable {
            case displayP3 = "display-p3"
            case srgb
        }
        
        public struct Components: Codable {
            let red: Double
            let blue: Double
            let green: Double
            let alpha: Double
        }
        
        let colorSpace: ColorSpace
        let components: Color.Components
    }
    
    public struct ColorAppearance: Codable {
        let appearances: [Appearance]?
        let color: Color
        let idiom: Idiom
    }
    
    public struct Contents: Codable {
        public struct Metadata: Codable {
            public let author: String
            public let version: Int
        }
        
        let colors: [ColorAppearance]
        let info: Metadata
    }
    
    public let contents: Contents
    public let name: String
}

public extension ColorSet.Color {
    /// Creates a new Color from a hex value.
    /// - Parameter hex: A string hexadecimal representation of a color.
    ///
    /// Hex values can be supplied in 12, 24, or 32 bit format.
    /// The color values are interpreted using the sRGB color space, as these are web colors.
    init?(hexValue: String) {
        let hex = hexValue.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        
        guard Scanner(string: hex).scanHexInt64(&int) else { return nil }
        
        let a, r, g, b: UInt64
        
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            return nil
        }
        
        self.colorSpace = .srgb
        
        self.components = Components(
            red: Double(r) / 255,
            blue: Double(b) / 255,
            green: Double(g) / 255,
            alpha: Double(a) / 255
        )
    }
}

public extension ColorSet.Appearance {
    init(themeAppearance: ThemeAppearance, idiom: ColorSet.Idiom = .universal) {
        self.appearance = "luminosity"
        self.value = themeAppearance
    }
}

public extension ColorSet.ColorAppearance {
    init?(colorToken: ColorToken, idiom: ColorSet.Idiom = .universal, isAnyAppearance: Bool = false) {
        guard let color = ColorSet.Color(hexValue: colorToken.hexValue) else { return nil }
        self.color = color
        self.appearances = isAnyAppearance ? nil : [ColorSet.Appearance(themeAppearance: colorToken.appearance)]
        self.idiom = idiom
    }
}

public extension ColorSet.Contents {
    init(colorTokens: Set<ColorToken>, idiom: ColorSet.Idiom = .universal) {
        self.info = Metadata(
            author: "com.onxmaps.Caldera",
            version: 1
        )
        
        var colors = colorTokens.compactMap {
            ColorSet.ColorAppearance(colorToken: $0, idiom: idiom)
        }
        
        if
            let lastColorToken = colorTokens.sorted(by: { $0.appearance < $1.appearance }).last,
            let anyColorSet = ColorSet.ColorAppearance(
                colorToken: lastColorToken,
                idiom: idiom,
                isAnyAppearance: true
            )
        {
            colors.insert(anyColorSet, at: 0)
        }
        
        self.colors = colors
    }
}
