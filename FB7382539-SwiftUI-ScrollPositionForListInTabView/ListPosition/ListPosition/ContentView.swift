import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
                List {
                    ForEach(1..<100) { _ in
                        Text("Scroll to the bottom")
                    }
                    Text("Go to the other tab!")
                }
            .tabItem {
                Text("Left tab")
            }

            VStack {
                Text("Go back to the left tab to see the list not keeping the scroll position!")
                .padding()
            }
            .tabItem {
                Text("Right tab")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
