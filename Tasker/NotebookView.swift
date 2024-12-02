import SwiftUI

struct NotebookView: View {
    var body: some View {
        VStack {
            Text("Welcome to your Notebook!")
                .font(.largeTitle)
                .padding()

            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.blue.edgesIgnoringSafeArea(.all))
        .foregroundColor(.white)
    }
}

struct NotebookView_Previews: PreviewProvider {
    static var previews: some View {
        NotebookView()
    }
}
