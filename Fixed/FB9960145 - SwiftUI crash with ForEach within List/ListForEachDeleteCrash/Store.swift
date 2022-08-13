import Foundation
import SwiftUI

final class Store: ObservableObject {
    @Published
    var elements = [
        Element(name: "Item 1", values: ["A", "B"]),
        Element(name: "Item 2", values: ["A", "B"]),
        Element(name: "Item 3", values: ["A", "B"]),
        Element(name: "Item 4", values: ["A", "B"]),
        Element(name: "Item 5", values: ["A", "B"])
    ]
}

struct Element: Identifiable {
    let id = UUID()
    var name: String
    var values: [String]
}
