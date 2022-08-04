//
//  ContentView.swift
//  ToDoList
//
//  Created by RILLY on 28/07/2022.
//

import SwiftUI

struct ContentView: View {
        
    @State var task = Task(name: "Test task", priority: .low, isDone: false)
    
    var body: some View {
        VStack {
            TaskCell(task: $task)
            Text(task.isDone ? "Tâche effectuée" : "Tâche à faire")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
