//
//  TestItem.swift
//  ToDoList
//
//  Created by RILLY on 03/08/2022.
//

import SwiftUI

struct TestItem: View {
    
    @Binding var isDetailed: Bool
    
    let description = "Lorem excepteur consectetur commodo do ea Lorem eiusmod occaecat duis aute proident officia. Duis reprehenderit adipisicing ex incididunt deserunt sunt dolor qui in amet consequat occaecat. Consequat consectetur in adipisicing elit anim commodo dolore."
    
    var body: some View {
        VStack {
            Text("Nom de l'item")
                .font(.title)
                .fontWeight(.bold)
            TestDescription(description: description, detailed: $isDetailed)
        }
    }
}

struct TestItem_Previews: PreviewProvider {
    
    struct Container: View {
        
        @State private var previewValue = false
        
        var body: some View {
            TestItem(isDetailed: $previewValue)
        }
    }
    
    static var previews: some View {
        Container()
    }
}
