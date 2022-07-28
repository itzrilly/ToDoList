//
//  TestStateView.swift
//  ToDoList
//
//  Created by RILLY on 28/07/2022.
//

import SwiftUI

struct TestStateView: View {
    
    @State var description = "Mon texte"
    
    var body: some View {
        VStack {
            Text(description)
            HStack {
                Button {
                    description = "Rouge"
                } label: {
                    Text("Rouge")
                }
                Button {
                    description = "Bleu"
                } label: {
                    Text("Bleu")
                }
                Button {
                    description = "Vert"
                } label: {
                    Text("Vert")
                }
            }
            Text("Mon texte est: \(description)")
        }
    }
}

struct TestStateView_Previews: PreviewProvider {
    static var previews: some View {
        TestStateView()
    }
}
