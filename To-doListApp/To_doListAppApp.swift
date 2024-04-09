//
//  To_doListAppApp.swift
//  To-doListApp
//
//  Created by Ansheng Zhou on 2024-04-05.
//

import SwiftData
import SwiftUI

@main
struct To_doListAppApp: App {
    var body: some Scene {
        WindowGroup {
            StaticInterface()
                .modelContainer(for:TodoItem.self)
        }
    }
}
