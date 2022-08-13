import SwiftUI

struct DetailView: View {

    @Binding
    var element: Element

    var onDelete: (() -> Void)?

    @State
    private var isDeleting = false

    var forceCrash = true

    var body: some View {
        VStack {
            if !forceCrash {
                ForEach($element.values, id: \.self) { value in
                    Text(value.wrappedValue)
                }
            }
            List {
                if forceCrash {
                    ForEach($element.values, id: \.self) { value in
                        Text(value.wrappedValue)
                    }
                    .onDelete { indexSet in
                        element.values.remove(atOffsets: indexSet)
                    }
                }
                Button {
                    isDeleting.toggle()
                } label: {
                    Text("Delete element")
                }
            }
            .confirmationDialog(
                "The element will be deleted",
                isPresented: $isDeleting,
                titleVisibility: .visible,
                actions: {
                    Button(role: .destructive) {
                        onDelete?()
                    } label: {
                        Text("Delete")
                    }

                }
            )
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(element: .constant(Element(name: "Item 1", values: ["A", "B"])))
    }
}
