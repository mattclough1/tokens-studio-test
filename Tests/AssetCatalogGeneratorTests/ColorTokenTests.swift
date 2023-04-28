import XCTest
@testable import AssetCatalogGenerator

final class ColorTokenTests: XCTestCase {
    
    func testInit() {
        let colorToken = ColorToken(key: "Test Color", val: ["value" : "#ff3300"], component: .text, appearance: .light)
        
        XCTAssertNotNil(colorToken)
        XCTAssertEqual("testColor", colorToken?.id)
        XCTAssertEqual("Test Color", colorToken?.name)
        XCTAssertEqual("#ff3300", colorToken?.hexValue)
        XCTAssertNil(colorToken?.brand)
        XCTAssertEqual(ThemeAppearance.light, colorToken?.appearance)
    }
    
    func testInitWithBrand() {
        let colorToken = ColorToken(key: "Test Color", val: ["value" : "#ff3300"], component: .text, brand: .hunt, appearance: .light)
        
        XCTAssertNotNil(colorToken)
        XCTAssertEqual("huntTestColor", colorToken?.id)
        XCTAssertEqual("Hunt Test Color", colorToken?.name)
        XCTAssertEqual("#ff3300", colorToken?.hexValue)
        XCTAssertEqual(Brand.hunt, colorToken?.brand)
        XCTAssertEqual(ThemeAppearance.light, colorToken?.appearance)
    }
    
    func testInitWithBrandKey() {
        let colorToken = ColorToken(key: "Hunt Test Color", val: ["value" : "#ff3300"], component: .text, appearance: .light)
        
        XCTAssertNotNil(colorToken)
        XCTAssertEqual("huntTestColor", colorToken?.id)
        XCTAssertEqual("Hunt Test Color", colorToken?.name)
        XCTAssertEqual("#ff3300", colorToken?.hexValue)
        XCTAssertEqual(Brand.hunt, colorToken?.brand)
        XCTAssertEqual(ThemeAppearance.light, colorToken?.appearance)
    }
    
    func testInitWithBrandKeyAndBrand() {
        let colorToken = ColorToken(key: "Hunt Test Color", val: ["value" : "#ff3300"], component: .text, brand: .hunt, appearance: .light)
        
        XCTAssertNotNil(colorToken)
        XCTAssertEqual("huntTestColor", colorToken?.id)
        XCTAssertEqual("Hunt Test Color", colorToken?.name)
        XCTAssertEqual("#ff3300", colorToken?.hexValue)
        XCTAssertEqual(Brand.hunt, colorToken?.brand)
        XCTAssertEqual(ThemeAppearance.light, colorToken?.appearance)
    }
    
    func testInitWithBrandKeyAndBrandMismatch() {
        let colorToken = ColorToken(key: "Hunt Test Color", val: ["value" : "#ff3300"], component: .text, brand: .offroad, appearance: .light)
        
        XCTAssertNotNil(colorToken)
        XCTAssertEqual("huntTestColor", colorToken?.id)
        XCTAssertEqual("Hunt Test Color", colorToken?.name)
        XCTAssertEqual("#ff3300", colorToken?.hexValue)
        XCTAssertEqual(Brand.offroad, colorToken?.brand)
        XCTAssertEqual(ThemeAppearance.light, colorToken?.appearance)
    }
    
    func testInitWithAppearance() {
        let colorToken = ColorToken(key: "Test Color", val: ["value" : "#ff3300"], component: .text, appearance: .light)
        
        XCTAssertNotNil(colorToken)
        XCTAssertEqual("testColor", colorToken?.id)
        XCTAssertEqual("Test Color", colorToken?.name)
        XCTAssertEqual("#ff3300", colorToken?.hexValue)
        XCTAssertNil(colorToken?.brand)
        XCTAssertEqual(ThemeAppearance.light, colorToken?.appearance)
    }
    
    func testInvalidHexValue() {
        let colorToken = ColorToken(key: "Test Color", val: ["value" : "INVALID"], component: .text, appearance: .light)
        XCTAssertNil(colorToken)
    }
}
