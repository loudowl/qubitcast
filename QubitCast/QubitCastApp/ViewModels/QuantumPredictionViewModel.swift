import SwiftUI

class QuantumPredictionViewModel: ObservableObject {
    @Published var hourlyForecasts: [HourlyForecast] = []

    private let quantumPredictionService = QuantumPredictionService()

    func generatePredictions() {
        quantumPredictionService.fetchHourlyPredictions { predictions in
            DispatchQueue.main.async {
                self.hourlyForecasts = predictions
            }
        }
    }
}

struct HourlyForecast {
    let hour: Int
    let temperature: Double
}
