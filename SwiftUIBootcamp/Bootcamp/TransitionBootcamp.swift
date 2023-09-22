//
//  TransitionBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Vijay Parmar on 10/05/23.
//

import SwiftUI

struct TransitionBootcamp: View {
    
    @State var showView : Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack{
                Button("CLICK"){
                    showView.toggle()
                }
                Spacer()
            }
            
            if showView{
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(.move(edge: .bottom))
                    .animation(.easeInOut)
            }
           
                
        }
        .edgesIgnoringSafeArea(.bottom)
        
    }
}

struct TransitionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TransitionBootcamp()
    }
}
