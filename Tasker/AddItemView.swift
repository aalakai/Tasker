import SwiftUI
import SwiftData

struct AddItemView: View {
    @Environment(\.modelContext) private var context
    @Environment(\.dismiss) private var dismiss
    @State private var newItemTitle = ""
    
    var body: some View {
        VStack {
            Text("Add New Item")
                .font(.title)
                .padding()
            
            TextField("Enter item name", text: $newItemTitle)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button(action: {
                if !newItemTitle.isEmpty {
                    let newItem = ListItem(title: newItemTitle)
                    context.insert(newItem)
                    try? context.save()
                    dismiss()
                }
            }) {
                Text("Add Item")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.teal)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding(.horizontal)
            }
            
            Spacer()
        }
        .background(Color.teal.edgesIgnoringSafeArea(.all))
    }
}
