//
//  PriorityView.swift
//  ToDoList
//
//  Created by RILLY on 04/08/2022.
//

import SwiftUI

struct PriorityView: View {
    
    @ObservedObject var task: Task
    
    var body: some View {
        Picker(selection: $task.priority, label: Text("Priorité")) {
            Image(systemName: "flag.fill")
                .foregroundColor(.blue)
                .tag(Priority.low)
            Image(systemName: "flag.fill")
                .foregroundColor(.orange)
                .tag(Priority.normal)
            Image(systemName: "flag.fill")
                .foregroundColor(.red)
                .tag(Priority.hight)
        }
        .pickerStyle(InlinePickerStyle())
    }
}

struct PriorityView_Previews: PreviewProvider {
    
    @StateObject static var testTask = Task(name: "Quentin")
    
    static var previews: some View {
        PriorityView(task: testTask)
    }
}
