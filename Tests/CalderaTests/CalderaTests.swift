import XCTest
@testable import Caldera

final class CalderaTests: XCTestCase {
    
    func testDarkTheme() throws {
        XCTAssertNotNil(Caldera.DarkTheme.url)
    }
    
    func testLightTheme() throws {
        XCTAssertNotNil(Caldera.LightTheme.url)
    }
}
