//
//  PriorityView.swift
//  ToDoList
//
//  Created by RILLY on 04/08/2022.
//

import SwiftUI

struct PriorityView: View {
    
    @Binding var selectedPriority: Priority
    
    var body: some View {
        Picker(selection: .constant(2), label: Text("Priorité")) {
            Image(systemName: "flag.fill")
                .foregroundColor(.blue)
                .tag(1)
            Image(systemName: "flag.fill")
                .foregroundColor(.orange)
                .tag(2)
            Image(systemName: "flag.fill")
                .foregroundColor(.red)
                .tag(3)
        }
        .pickerStyle(InlinePickerStyle())
    }
}

struct PriorityView_Previews: PreviewProvider {
    
    @State static var testPriority = Priority.normal
    
    static var previews: some View {
        PriorityView(selectedPriority: $testPriority)
    }
}
