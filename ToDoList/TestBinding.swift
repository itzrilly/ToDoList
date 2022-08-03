//
//  TestBinding.swift
//  ToDoList
//
//  Created by RILLY on 03/08/2022.
//

import SwiftUI

struct TestBinding: View {
    
    @State var toggleIsOn: Bool = false
    @State var value = 2.5
    
    var body: some View {
        VStack {
            Text(toggleIsOn ? "Vrai" : "Faux" )
            Toggle(isOn: $toggleIsOn) {
                Text("Mon switch ")
            }
            Slider(value: $value)
        }
        .padding()
    }
}

struct TestBinding_Previews: PreviewProvider {
    static var previews: some View {
        TestBinding()
    }
}
