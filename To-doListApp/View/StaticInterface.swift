//
//  StaticInterface.swift
//  To-doListApp
//
//  Created by Ansheng Zhou on 2024-04-05.
//

import SwiftUI

struct StaticInterface: View {
    //Mark: stored properties
    //The search text
    @State var searchText = ""
    
    //The item currently being added
    @State var newItemDescription = ""
    
    
    //Mark: Computed properties
    var body: some View {
        
        NavigationView {
            VStack{
                
                List {
                    ToDoListView(currentItem: firstItem)
                    ToDoListView(currentItem: secondItem)
                    ToDoListView(currentItem: thirdItem)
                }
                .searchable(text: $searchText)
                
                HStack {
                    TextField("Enter a to-do item", text: $newItemDescription)
                    Button("ADD") {
                     //add new to-do item
                    }
                    .font(.caption)
                }
                .padding(20)
            }
            .navigationTitle("To do")
        }
    }
}

#Preview {
    StaticInterface()
}