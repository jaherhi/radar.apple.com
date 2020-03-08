import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationListView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
