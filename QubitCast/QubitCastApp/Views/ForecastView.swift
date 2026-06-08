import SwiftUI

struct ForecastView: View {
    @StateObject private var quantumPredictionViewModel = QuantumPredictionViewModel()

    var body: some View {
        List(quantumPredictionViewModel.hourlyForecasts, id: \.hour) { forecast in
            HStack {
                Text("Hour: \(forecast.hour)")
                Spacer()
                Text("\(forecast.temperature)°C")
            }
        }
        .onAppear {
            quantumPredictionViewModel.generatePredictions()
        }
        .navigationTitle("Hourly Forecast")
        .background(Color("LightSky"))
    }
}

struct ForecastView_Previews: PreviewProvider {
    static var previews: some View {
        ForecastView()
    }
}
