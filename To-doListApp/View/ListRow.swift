//
//  ToDoListView.swift
//  RemindersApp
//
//  Created by Ansheng Zhou on 2023-11-04.
//

import SwiftUI

struct ToDoListView: View {
    
    @Bindable var currentItem: TodoItem
    
    var body: some View {
        
                Label(title: {TextField("Enter a to-do item", text: $currentItem.title, axis: .vertical)},
                      icon: {
                    Image(systemName: currentItem.done == true ? "checkmark.circle":"circle")
                    
                        .onTapGesture {
                            currentItem.done.toggle()
                        }
                    
                })
                    
                    
            
            }
}

#Preview {
    List{
        ToDoListView(currentItem: Binding.constant(firstItem))
        ToDoListView(currentItem: Binding.constant(secondItem))
    }
}
