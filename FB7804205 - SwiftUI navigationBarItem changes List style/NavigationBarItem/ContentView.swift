import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(1...10, id: \.self) { index in
                    Text("Index \(index)")
                }
            }
            .navigationBarItems(trailing: Text("Button"))
            .navigationTitle("Index")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
