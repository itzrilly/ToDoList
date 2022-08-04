//
//  TaskList.swift
//  ToDoList
//
//  Created by RILLY on 04/08/2022.
//

import Foundation

class TaskList: ObservableObject {
    
    var owner: String
    @Published var tasks: [Task]
    
    init(owner: String){
        self.owner = owner
        self.tasks = [
            Task(name: "Finir le projet", priority: .hight),
            Task(name: "Envoyer le dossier"),
            Task(name: "Planifier le rendez-vous")
        ]
    }
}
