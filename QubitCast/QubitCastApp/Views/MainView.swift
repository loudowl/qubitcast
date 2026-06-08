import SwiftUI

struct MainView: View {
    @StateObject private var weatherViewModel = WeatherViewModel()

    var body: some View {
        NavigationView {
            VStack {
                Text("Current Temperature: \(weatherViewModel.currentTemperature)°C")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding()

                Text("Humidity: \(weatherViewModel.currentHumidity)%")
                    .foregroundColor(.white)

                Spacer()

                NavigationLink(destination: ForecastView()) {
                    Text("View Hourly Forecast")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(8)
                }

                Spacer()
            }
            .background(Color("QuantumBlue"))
            .navigationTitle("QubitCast")
        }
        .onAppear {
            weatherViewModel.fetchWeather()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
