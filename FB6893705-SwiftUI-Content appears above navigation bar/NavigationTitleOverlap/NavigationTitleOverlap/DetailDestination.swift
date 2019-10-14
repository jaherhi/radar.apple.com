import SwiftUI

struct DetailView: View {
    var body: some View {
        ScrollView {
            ForEach(1..<100) { _ in
                Text("Scroll this content to reproduce the issue ⚠️")
                    .lineLimit(1)
            }
        }
        .navigationBarTitle("Hello", displayMode: .large)
    }
}

#if DEBUG
struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
#endif
