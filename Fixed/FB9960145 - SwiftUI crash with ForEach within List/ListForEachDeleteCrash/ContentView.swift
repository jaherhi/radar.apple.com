import SwiftUI

struct ContentView: View {

    @ObservedObject
    var store: Store

    var body: some View {
        VStack {
            ForEach($store.elements) { element in
                NavigationLink {
                    DetailView(
                        element: element,
                        onDelete: {
                            guard let index = store.elements.firstIndex(where: { $0.id == element.id }) else { return }
                            store.elements.remove(at: index)
                        }
                    )
                } label: {
                    Text(element.wrappedValue.name)
                        .padding()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(store: Store())
    }
}
