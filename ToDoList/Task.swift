//
//  Task.swift
//  ToDoList
//
//  Created by RILLY on 03/08/2022.
//

import Foundation

enum Priority {
    case hight
    case normal
    case low
    
}

struct Task {
    let name: String
    let priority: Priority
    var isDone: Bool
}
