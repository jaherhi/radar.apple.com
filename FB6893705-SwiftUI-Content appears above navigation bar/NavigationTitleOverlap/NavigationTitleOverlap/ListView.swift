import SwiftUI

struct ListView: View {
    var body: some View {
        NavigationView {
            List(1..<10) { _ in
                NavigationLink(destination: DetailView()) {
                    Text("Tap me")
                }
            }
            .navigationBarTitle(Text("Hello! 👋"))
        }
    }
}

#if DEBUG
struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
#endif
