//
//  TextFieldBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Vijay Parmar on 15/05/23.
//

import SwiftUI

struct TextFieldBootcamp: View {
    
    @State var textFieldtext:String = ""
    
    var body: some View {
        VStack{
            TextField("Type something here...", text: $textFieldtext)
                .padding()
                
                .background(Color.gray.opacity(0.3).cornerRadius(10))
                .foregroundColor(.red)
                .font(.title2)
                .padding(.leading,16)
                .padding(.trailing,16)
                
            Button(action: {}, label: {
                Text("Save")
                    .frame(maxWidth:.infinity)
                
            })
            
            .padding()
            .background(.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
            .padding(.leading,16)
            .padding(.trailing,16)
            
        }
    }
}

struct TextFieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldBootcamp()
    }
}
