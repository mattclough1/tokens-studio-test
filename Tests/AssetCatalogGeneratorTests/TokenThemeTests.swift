import XCTest
@testable import AssetCatalogGenerator


final class TokenThemeTests: XCTestCase {
    
    static let darkTokenTheme: TokenTheme? = {
        guard let url = Bundle.module.url(forResource: "token-dark-theme", withExtension: "json") else {
            return nil
        }
        return TokenTheme(fileURL: url, rootKey: "Dark Theme", appearance: .dark)
    }()
    
    static let lightTokenTheme: TokenTheme? = {
        guard let url = Bundle.module.url(forResource: "token-light-theme", withExtension: "json") else {
            return nil
        }
        return TokenTheme(fileURL: url, rootKey: "Light Theme", appearance: .light)
    }()
    
    func testAppearance() throws {
        XCTAssertEqual(ThemeAppearance.dark, Self.darkTokenTheme?.appearance)
        XCTAssertEqual(ThemeAppearance.light, Self.lightTokenTheme?.appearance)
    }
    
    func testName() throws {
        XCTAssertEqual("Dark Theme", Self.darkTokenTheme?.name)
        XCTAssertEqual("Light Theme", Self.lightTokenTheme?.name)
    }
    
    func testStyleDictionary() throws {
        
        enum ExpectedKeys: String, CaseIterable, CustomStringConvertible {
            case alerts
            case brand
            case buttons
            case dividers
            case icons
            case surfaces
            case text
            
            var description: String { rawValue.capitalized }
        }
        
        let styleDictionary = Self.darkTokenTheme?.styleDictionary
        XCTAssertNotNil(styleDictionary)
        XCTAssertFalse(styleDictionary!.isEmpty)
        
        for key in ExpectedKeys.allCases {
            let val = styleDictionary![String(describing: key)]
            
            XCTAssertNotNil(val, "Expected key '\(key)' to not be nil")
            let jsonObj = val as? [String: Any]
                        
            XCTAssertNotNil(jsonObj, "Expected value of '\(key)' to be '[String: Any]' got \(String(describing: jsonObj))")
        }
    }
    
    func testDarkThemeColors() throws {
        let colors = Self.darkTokenTheme?.colors
        
        if let colors {
            XCTAssertFalse(colors.isEmpty)
            XCTAssertEqual(38, colors.count)
        } else {
            XCTAssertNotNil(colors)
        }
    }
    
    func testLightThemeColors() throws {
        let colors = Self.lightTokenTheme?.colors
        
        if let colors {
            XCTAssertFalse(colors.isEmpty)
            XCTAssertEqual(46, colors.count)
        } else {
            XCTAssertNotNil(colors)
        }
    }
    
    func testDarkThemeColorTokenIds() throws {
        let colorTokenIds = Self.darkTokenTheme?.colorTokenIds
        
        if let colorTokenIds {
            XCTAssertFalse(colorTokenIds.isEmpty)
            XCTAssertEqual(38, colorTokenIds.count)
        } else {
            XCTAssertNotNil(colorTokenIds)
        }
    }
    
    func testLightThemeColorTokenIds() throws {
        let colorTokenIds = Self.lightTokenTheme?.colorTokenIds
        
        if let colorTokenIds {
            XCTAssertFalse(colorTokenIds.isEmpty)
            XCTAssertEqual(46, colorTokenIds.count)
        } else {
            XCTAssertNotNil(colorTokenIds)
        }
    }
}
