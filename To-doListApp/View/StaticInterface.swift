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
    
    //The list of to-do list
    @State var todos: [TodoItem] = exampleItems
    
    //Mark: Computed properties
    var body: some View {
        
        NavigationView {
            VStack{
                
                List($todos) { $todo in
                    
                    ToDoListView(currentItem: todo)
                    //Delete a to-do item
                        .swipeActions{
                            Button("Delete",
                                   role:.destructive,
                                   action: {
                                delete(todo)
                            })
                        }.onTapGesture {
                            todo.done.toggle()
                        }
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
        
        // Append to the array
        todos.append (todo)
        
    }
    
    func delete(_ todo:TodoItem){
        
        //remove the provided to-do item from the array
        todos.removeAll{
            currentItem in currentItem.id == todo.id
        }
    }
}

#Preview {
    StaticInterface()
}
