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
        List(taskList.tasks) { task in
            TaskCell(task: task)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
