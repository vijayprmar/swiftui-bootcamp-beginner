//
//  FocusStateBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Vijay Parmar on 21/09/23.
//

import SwiftUI

struct FocusStateBootcamp: View {
    
    @FocusState private var usernameInFocus:Bool
    @State private var username = ""
    
    var body: some View {
        VStack{
            TextField("Add your name here...", text: $username)
                .focused($usernameInFocus)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            Button("Toggle Focus State"){
                usernameInFocus.toggle()
            }
            
        }
        .padding(40)
        
    }
}

struct FocusStateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateBootcamp()
    }
}
