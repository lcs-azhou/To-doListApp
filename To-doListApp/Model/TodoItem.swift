//
//  TodoItem.swift
//  To-doListApp
//
//  Created by Ansheng Zhou on 2024-04-08.
//

import SwiftData

@Model
class TodoItem: Identifiable{
    var title: String
    var done: Bool
    
    init(title: String, done: Bool) {
        self.title = title
        self.done = done
    }
    
}

let firstItem = TodoItem(title: "1", done: true)
let secondItem = TodoItem(title: "2", done: false)
let thirdItem = TodoItem(title: "3", done: true)

let exampleItems = [
    firstItem,
    secondItem,
    thirdItem
]
