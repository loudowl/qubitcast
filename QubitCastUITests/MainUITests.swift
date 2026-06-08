import XCTest

class MainUITests: XCTestCase {
    func testMainViewDisplays() {
        let app = XCUIApplication()
        app.launch()

        XCTAssertTrue(app.staticTexts["Current Temperature:"].exists)
        XCTAssertTrue(app.staticTexts["Humidity:"].exists)
    }
}
