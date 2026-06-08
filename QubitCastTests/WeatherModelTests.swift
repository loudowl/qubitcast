import XCTest
@testable import QubitCast

class WeatherModelTests: XCTestCase {
    func testWeatherModelInitialization() {
        let weatherModel = WeatherModel(context: PersistenceController.preview.container.viewContext)
        weatherModel.temperature = 23.0
        weatherModel.humidity = 55.0
        weatherModel.timestamp = Date()
        weatherModel.location = "San Francisco"

        XCTAssertEqual(weatherModel.temperature, 23.0)
        XCTAssertEqual(weatherModel.humidity, 55.0)
        XCTAssertEqual(weatherModel.location, "San Francisco")
    }
}
