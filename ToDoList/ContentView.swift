//
//  ContentView.swift
//  ToDoList
//
//  Created by RILLY on 28/07/2022.
//

import SwiftUI

struct ContentView: View {
        
    @StateObject var taskList = TaskList(owner: "Quentin")
    
    var body: some View {
        NavigationView {
            List(taskList.tasks) { task in
                NavigationLink {
                    PriorityView(selectedPriority: $task.priority)
                } label: {
                    TaskCell(task: task)
                }
            }
            .navigationTitle("My Tasks")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
