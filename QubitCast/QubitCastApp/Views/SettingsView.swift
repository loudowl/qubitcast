import SwiftUI

struct SettingsView: View {
    var body: some View {
        Text("Settings")
            .font(.title)
            .navigationBarTitle("Settings", displayMode: .inline)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
