import SwiftUI

@main
struct ListForEachDeleteCrashApp: App {
    @StateObject
    var store = Store()

    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView(store: store)
            }
        }
    }
}
