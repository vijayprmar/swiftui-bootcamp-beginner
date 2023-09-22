//
//  ToogleBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Vijay Parmar on 15/05/23.
//

import SwiftUI

struct ToogleBootcamp: View {
    
    @State var toggleIsOn:Bool = false
    
    var body: some View {
        VStack{
        
            HStack{
                Text("Status:")
                Text(toggleIsOn ? "Online" : "Offline")
            }
            .font(.title)
            
            Toggle(
            isOn: $toggleIsOn, label: {
                Text("Change Status")
            }
            )
            .toggleStyle(SwitchToggleStyle(tint: .purple))
            
            Spacer()
            
        }
        .padding(.horizontal, 100)
    }
}

struct ToogleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToogleBootcamp()
    }
}
