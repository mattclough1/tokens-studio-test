import Foundation

protocol ThemeFile {
    static var url: URL? { get }
}

enum Caldera {
    /// The dark theme style dictionary.
    public enum DarkTheme: ThemeFile {
        public static let url = Bundle.module.url(forResource: "token-dark-theme", withExtension: "json")
    }
    
    /// The light theme style dictionary.
    public enum LightTheme: ThemeFile {
        public static let url = Bundle.module.url(forResource: "token-light-theme", withExtension: "json")
    }
}
