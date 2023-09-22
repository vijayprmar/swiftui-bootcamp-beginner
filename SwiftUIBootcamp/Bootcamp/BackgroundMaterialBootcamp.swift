//
//  BackgroundMaterialBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Vijay Parmar on 21/09/23.
//

import SwiftUI

struct BackgroundMaterialBootcamp: View {
    var body: some View {
        VStack{
            Spacer()
            
            VStack{
                   RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50,height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
                .frame(maxWidth: .infinity)
                .background(.ultraThinMaterial)
                .cornerRadius(30)
            
        }
        
        .background(
            Image("1")
                .resizable()
                
                
        )
        .ignoresSafeArea()
    }
}

struct BackgroundMaterialBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundMaterialBootcamp()
    }
}
