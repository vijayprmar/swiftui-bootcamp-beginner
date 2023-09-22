//
//  TextEditorBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Vijay Parmar on 15/05/23.
//

import SwiftUI

struct TextEditorBootcamp: View {
    
    @State var  textEdiitorText:String = "This is the starting text"
    
    var body: some View {
        
        VStack{
            
            TextEditor(text: $textEdiitorText)
            Button(action: {
                
            }, label: {
                
                Text("Save")
                    .padding()
                    .frame(maxWidth: .infinity)
                    
            })
            .background(Color.blue.cornerRadius(8))
            .padding()
            .foregroundColor(.white)
            
        }
        
        
    }
}

struct TextEditorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorBootcamp()
    }
}
