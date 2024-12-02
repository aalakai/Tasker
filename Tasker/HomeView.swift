//
//  HomeView.swift
//  Tasker
//
//  Created by Drew Kringel on 12/1/24.
//


import SwiftUI
import SwiftData


struct HomeView: View {
    @State private var navigateToNotebook = false
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 30) {
                // App Icon
                Image("PreviewIcon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .cornerRadius(20)
                    .shadow(radius: 10)
                
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
            .onTapGesture {
                navigateToNotebook = true
            }
            .navigationDestination(isPresented: $navigateToNotebook) {
                NotebookView()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
