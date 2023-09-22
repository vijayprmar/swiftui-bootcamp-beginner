//
//  ForEachBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Vijay Parmar on 09/05/23.
//

import SwiftUI

struct ForEachBootcamp: View {
    var body: some View {
        
        VStack{
            ScrollView{
                ForEach(1..<100){index in
                    
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                }
            }
            
        }
        
        
    }
}

struct ForEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp()
    }
}
