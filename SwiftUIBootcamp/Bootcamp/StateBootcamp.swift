//
//  State.swift
//  SwiftUIBootcamp
//
//  Created by Vijay Parmar on 09/05/23.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State var message : String = "Hello World!"
    
    var body: some View {
        
        VStack {
            Text(message)
                .padding()
            Button(action: {
                message = "Hello World Vijay !"
            }, label: {
                Text("Click Me")
            })
        }
    }
}

struct StateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcamp()
    }
}
