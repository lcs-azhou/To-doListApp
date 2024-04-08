//
//  ToDoListView.swift
//  RemindersApp
//
//  Created by Ansheng Zhou on 2023-11-04.
//

import SwiftUI

struct ToDoListView: View {
    
    let currentItem: TodoItem
    
    var body: some View {
        ZStack {
            HStack {
                Label(title: {Text(currentItem.title)},
                      icon: {
                    Image(systemName: currentItem.done == true ? "checkmark.circle":"circle")
                    
                })
                    }
                    
                }
            }
}

#Preview {
    ToDoListView(currentItem: firstItem)
}
