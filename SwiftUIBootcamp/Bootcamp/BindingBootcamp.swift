//
//  BindingBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Vijay Parmar on 10/05/23.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var bgColor : Color = .red
    
    var body: some View {
        ZStack {
            bgColor
                .ignoresSafeArea()
            VStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
               ButtonView(backgroundColor: $bgColor)
            }
        }
    }
}


struct ButtonView: View {
    
    @Binding var backgroundColor:Color
    
    var body: some View {
        Button {
            backgroundColor = .green
        } label: {
            Text("Click Me")
                .foregroundColor(.white)
                .padding()
                .background(
                    Capsule()
                )
        }
    }
}


struct BindingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootcamp()
    }
}
