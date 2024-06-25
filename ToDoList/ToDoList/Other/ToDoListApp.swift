//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Jarvis Lam on 6/24/24.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
