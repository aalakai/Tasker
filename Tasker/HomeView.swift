import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(spacing: 30) {
            // App Icon
            Image(systemName: "square.and.pencil")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .foregroundColor(.white)
                .background(Circle().fill(Color.teal).shadow(radius: 10))
            
            // App Name
            Text("TASKER")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            // Tap to Open Text
            Text("tap to open your notebook")
                .font(.title3)
                .foregroundColor(.white.opacity(0.8))
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.teal.edgesIgnoringSafeArea(.all))
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
