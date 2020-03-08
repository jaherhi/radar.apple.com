import SwiftUI

struct NavigationListView: View {
    var body: some View {
        NavigationView {
            List(1..<100) { index in
                VStack {
                    Text("This is row number \(index)")
                }
                .background(Color.gray)
            }
        }
    }
}

struct NavigationListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationListView()
    }
}
