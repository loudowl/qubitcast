import SwiftUI

struct WatchMainView: View {
    var body: some View {
        VStack {
            Text("QubitCast")
                .font(.headline)
                .foregroundColor(.white)
            Text("23°C")
                .font(.largeTitle)
                .foregroundColor(.white)
        }
        .background(Color("QuantumBlue"))
    }
}

struct WatchMainView_Previews: PreviewProvider {
    static var previews: some View {
        WatchMainView()
    }
}
