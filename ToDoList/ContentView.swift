//
//  ContentView.swift
//  ToDoList
//
//  Created by RILLY on 28/07/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var taskIsDone = false
    
    var body: some View {
        VStack {
            TaskCell(name: "Test task", priority: .low, isDone: $taskIsDone)
            Text(taskIsDone ? "Tâche effectuée" : "Tâche à faire")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
