//
//  NotebookView.swift
//  Tasker
//
//  Created by Drew Kringel on 12/1/24.
//

import SwiftUI
import SwiftData

struct NotebookView: View {
    @Environment(\.modelContext) private var context
    @Query var listItems: [ListItem]
    
    @State private var showAddItemView = false
    
    var body: some View {
        VStack {
            // Header
            Text("My List")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top)
            
            Divider()
                .padding(.horizontal)
            
            List {
                ForEach(listItems) { item in
                    HStack {
                        Button(action: {
                            item.isChecked.toggle()
                            try? context.save()
                        }) {
                            Image(systemName: item.isChecked ? "checkmark.square" : "square")
                        }
                        .buttonStyle(PlainButtonStyle())
                        
                        Text(item.title)
                            .strikethrough(item.isChecked, color: .black)
                        
                        Spacer()
                        
                        Button(action: {
                            context.delete(item)
                            try? context.save()
                        }) {
                            Image(systemName: "trash")
                                .foregroundColor(.red)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
            }
            .listStyle(PlainListStyle())
            
            Spacer()
            
            Button(action: {
                showAddItemView = true
            }) {
                Image(systemName: "plus")
                    .font(.largeTitle)
                    .padding()
                    .background(Color.white)
                    .clipShape(Circle())
                    .shadow(radius: 10)
            }
            .padding(.bottom)
            .sheet(isPresented: $showAddItemView) {
                AddItemView()
            }
        }
        .background(Color.teal.edgesIgnoringSafeArea(.all))
    }
}
