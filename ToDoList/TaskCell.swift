//
//  TaskCell.swift
//  ToDoList
//
//  Created by RILLY on 28/07/2022.
//

import SwiftUI

enum Priority {
    case hight
    case normal
    case low
}

struct TaskCell: View {
    
    let name: String
    let priority: Priority
    @State var isDone: Bool = false
    
    private var flagColor: Color {
        switch priority {
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
                Text(name)
                Image(systemName: "flag.fill")
                    .foregroundColor(flagColor)
            }
            Spacer()
            Button {
                isDone.toggle()
            } label: {
                Image(systemName: isDone ? "circle.inset.filled" : "circle")
            }
        }
        .padding()
    }
}

struct TaskCellView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TaskCell(name: "Preview task", priority: .normal)
            TaskCell(name: "Preview task", priority: .hight)
        }
        .previewLayout(.sizeThatFits)
    }
}
