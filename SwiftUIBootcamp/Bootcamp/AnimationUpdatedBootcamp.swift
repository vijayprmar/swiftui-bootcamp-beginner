//
//  AnimationUpdatedBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Vijay Parmar on 22/09/23.
//

import SwiftUI

struct AnimationUpdatedBootcamp: View {
    
    @State private var animate1:Bool = false
    
    var body: some View {
        ZStack{
            
            VStack(spacing: 40){
                Button("Action 1"){
                    animate1.toggle()
                }
             
                Button("Action 2"){
                    
                }
                
                ZStack{
                    Rectangle()
                        .frame(width: 100, height: 100)
                        .frame(maxWidth: .infinity, alignment: animate1 ? .leading : .trailing)
                        .background(.green)
                        .frame(maxHeight: .infinity, alignment: animate1 ? .top : .bottom)
                        .background(.orange)
                }
                
                .frame(maxWidth: .infinity,maxHeight: .infinity)
                .background(.red)
                
            }
            .animation(.spring(),value: animate1)
        }
    }
}

struct AnimationUpdatedBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationUpdatedBootcamp()
    }
}
