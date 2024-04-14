//
//  StaticInterface.swift
//  To-doListApp
//
//  Created by Ansheng Zhou on 2024-04-05.
//

import SwiftUI
import SwiftData

struct StaticInterface: View {
    //Mark: stored properties
    //The search text
    @State var searchText = ""
    
    //The item currently being added
    @State var newItemDescription = ""
    
//    Access the model context (required to do additions,deletions,updates,et cetera)
    @Environment(\.modelContext) var modelContext
    
    //The list of to-do list
    @Query var todos: [TodoItem]
    
    //Mark: Computed properties
    var body: some View {
        
        NavigationView {
            VStack{
                
                List {
                    ForEach(todos) { todo in
                        
                        ToDoListView(currentItem: todo)

                    }
                    .onDelete(perform: removeRows)
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
    
    // MARK: Functions
    func createToDo(withTitle title: String) {
        
        // Create the new to-do item instance
        let todo = TodoItem(
            title: title, done: false
        )
        
        // Use the model context to insert the new to-do
        modelContext.insert(todo)
        
    }
    
    func removeRows(at offsets: IndexSet) {
        
        // Accept the offset within the list
        // (the position of the item being deleted)
        //
        // Then ask the model context to delete this
        // for us, from the 'todos' array
        for offset in offsets {
            modelContext.delete(todos[offset])
        }
    }
}

//#Preview {
//    StaticInterface()
//}
