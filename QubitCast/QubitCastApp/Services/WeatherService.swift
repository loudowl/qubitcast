import WeatherKit
import CoreLocation

class WeatherService {
    private let weatherKit = WeatherKit()
    
    func fetchCurrentWeather(completion: @escaping (Result<Weather, Error>) -> Void) {
        let location = CLLocation(latitude: 37.7749, longitude: -122.4194) // Example location
        Task {
            do {
                let weather = try await weatherKit.weather(for: location)
                completion(.success(weather))
            } catch {
                completion(.failure(error))
            }
        }
    }
}
