//
//  ColorPickerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Vijay Parmar on 16/05/23.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    
    @State var backgroundColor : Color = .green
    
    var body: some View {
        ZStack{
            backgroundColor.edgesIgnoringSafeArea(.all)
            
        
            
            ColorPicker("Select Color", selection: $backgroundColor)
                .padding()
                .background(.black)
                .foregroundColor(.white)
                .cornerRadius(10)
                .padding(50)
            
        }
    }
}

struct ColorPickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerBootcamp()
    }
}
