import SwiftUI
import WeatherKit

class WeatherViewModel: ObservableObject {
    @Published var currentTemperature: Double = 0.0
    @Published var currentHumidity: Double = 0.0

    private let weatherService = WeatherService()

    func fetchWeather() {
        weatherService.fetchCurrentWeather { result in
            switch result {
            case .success(let weather):
                DispatchQueue.main.async {
                    self.currentTemperature = weather.temperature
                    self.currentHumidity = weather.humidity
                }
            case .failure(let error):
                print("Failed to fetch weather: \(error)")
            }
        }
    }
}
