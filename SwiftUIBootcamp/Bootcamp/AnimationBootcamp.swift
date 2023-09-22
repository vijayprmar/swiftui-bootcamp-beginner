//
//  AnimationBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Vijay Parmar on 10/05/23.
//

import SwiftUI

struct AnimationBootcamp: View {
    
    @State var isAnimated:Bool = false
    
    var body: some View {
        VStack{
            Button("Button"){
               
                    isAnimated.toggle()
                
             
                
            }
            
            Rectangle()
                .fill(isAnimated ? Color.blue : Color.brown)
                .frame(width: isAnimated ? 150 : 100, height: isAnimated ?  150 : 100)
                
            
            RoundedRectangle(cornerRadius: isAnimated ? 12 : 150)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(width: isAnimated ? 150 : 100, height: isAnimated ?  150 : 100)
               // .offset(x:isAnimated  ? 10 : 100 ,y: isAnimated ? 10 : 100)
                .animation(.default, value: isAnimated)
            
        }
    }
    
}

struct AnimationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBootcamp()
    }
}
