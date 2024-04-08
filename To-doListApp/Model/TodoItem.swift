//
//  TodoItem.swift
//  To-doListApp
//
//  Created by Ansheng Zhou on 2024-04-08.
//

import Foundation

struct TodoItem: Identifiable{
    let id = UUID()
    var title: String
    var done: Bool
}

let firstItem = TodoItem(title: "1", done: true)
let secondItem = TodoItem(title: "2", done: false)
let thirdItem = TodoItem(title: "3", done: true)

let exampleItems = [
    firstItem,
    secondItem,
    thirdItem
]
