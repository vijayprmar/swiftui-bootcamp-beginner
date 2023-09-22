//
//  GroupBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Vijay Parmar on 22/09/23.
//

import SwiftUI

struct GroupBootcamp: View {
    var body: some View {
        VStack(spacing: 50){
            Text("Hello world!")
            Text("Hello world!")
            Group{
                Text("Hello world!")
                Text("Hello world!")
                    
            }
            
            .font(.callout)
            
        }
        .foregroundColor(.red)
        .font(.headline)
    }
}


extension View{
    func width(_ width:CGFloat)->some View{
        self.frame(width: width)
    }
    
}

struct GroupBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GroupBootcamp()
    }
}
