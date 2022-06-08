import SwiftUI

struct ContentView: View {
    @State
    private var pickerState = 0

    private let sections = [
        0: ["a", "b", "c", "d", "e"],
        1: ["f", "g", "h", "i", "j"],
        2: ["k", "l", "m", "n", "o"]
    ]

    private var items: [String] {
        sections[pickerState] ?? []
    }

    var body: some View {
        NavigationView {
            List {
                Picker("Picker", selection: $pickerState) {
                    Text("1️⃣").tag(0)
                    Text("2️⃣").tag(1)
                    Text("3️⃣").tag(2)
                }.pickerStyle(SegmentedPickerStyle())
                ForEach(items, id: \.self) { item in
                    HStack {
                        Image(item)
                            .resizable()
                            .frame(width: 112, height: 168)
                            .cornerRadius(4)
                            .shadow(radius: 3, x: 2, y: 2)
                            .padding(.trailing, 4.0)
                        Text(item)
                    }
                }
            }
            .navigationTitle("Odd flicker")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
