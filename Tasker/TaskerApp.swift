//
//  TaskerApp.swift
//  Tasker
//
//  Created by Drew Kringel on 12/1/24.
//

import SwiftUI
import SwiftData

@main
struct TaskerApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
        }
        .modelContainer(for: [ListItem.self])
    }
}
