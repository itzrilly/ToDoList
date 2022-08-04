//
//  TaskCell.swift
//  ToDoList
//
//  Created by RILLY on 28/07/2022.
//

import SwiftUI

struct TaskCell: View {
    
    @Binding var task: Task
    
    private var flagColor: Color {
        switch task.priority {
            case .hight:
                return .red
            case .normal:
                return .orange
            case .low:
                return .blue
        }
    }
    
    var body: some View {
        HStack {
            VStack (alignment: .leading, spacing: 8) {
                Text(task.name)
                Image(systemName: "flag.fill")
                    .foregroundColor(flagColor)
            }
            Spacer()
            Button {
                task.isDone.toggle()
            } label: {
                Image(systemName: task.isDone ? "circle.inset.filled" : "circle")
                    .imageScale(.large)
                    .foregroundColor(.black)
            }
        }
        .padding()
    }
}

struct TaskCellView_Previews: PreviewProvider {
    
    @State static var task1 = Task(name: "Preview task", priority: .normal, isDone: false)
    @State static var task2 = Task(name: "Preview task 2", priority: .hight, isDone: true)
    
    static var previews: some View {
        Group {
            TaskCell(task: $task1)
            TaskCell(task: $task2)
        }
        .previewLayout(.sizeThatFits)
    }
}
