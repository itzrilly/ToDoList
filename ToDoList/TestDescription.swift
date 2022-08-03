//
//  TestDescription.swift
//  ToDoList
//
//  Created by RILLY on 03/08/2022.
//

import SwiftUI

struct TestDescription: View {
    
    let description: String
    @Binding var detailed: Bool
    var body: some View {
        VStack (alignment: .trailing, spacing: 8) {
            Text(description)
                .lineLimit(detailed ? nil : 3)
            Button {
                detailed.toggle()
            } label: {
                Text(detailed ? "Voir plus": "Voir moins")
            }

        }
        .frame(maxWidth: .infinity)
        .padding()
    }
}

struct TestDescription_Previews: PreviewProvider {
    
    @State static var previewValue = false
    
    static var previews: some View {
        TestDescription(description: "Fugiat excepteur consectetur commodo do ea Lorem eiusmod occaecat duis aute proident officia. Duis reprehenderit adipisicing ex incididunt deserunt sunt dolor qui in amet consequat occaecat. Consequat consectetur in adipisicing elit anim commodo dolore.", detailed: $previewValue)
    }
}
