//
//  User.swift
//  ToDoList
//
//  Created by Jarvis Lam on 6/24/24.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
    
}
