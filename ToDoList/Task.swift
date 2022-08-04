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

class Task: ObservableObject, Identifiable {
    let id = UUID()
    let name: String
    let priority: Priority
    @Published var isDone: Bool
    
    init(name: String, priority: Priority = .normal, isDone: Bool = false){
        self.name = name
        self.priority = priority
        self.isDone = isDone
    }
}
