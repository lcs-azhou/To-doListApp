//
//  ToDoListView.swift
//  RemindersApp
//
//  Created by Ansheng Zhou on 2023-11-04.
//

import SwiftUI

struct ToDoListView: View {
    
    @Binding var currentItem: TodoItem
    
    var body: some View {
        
                Label(title: {Text(currentItem.title)},
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
