//
//  LazyGridBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Vijay Parmar on 09/05/23.
//

import SwiftUI

struct LazyGridBootcamp: View {
    
    let columns:[GridItem] = [
        GridItem(.flexible(),spacing: nil,alignment: nil),
        GridItem(.flexible(),spacing: nil,alignment: nil),
    ]
    
    var body: some View {
        ScrollView{
            LazyVGrid(columns:columns){
                ForEach(0..<50){ index in
                        Rectangle()
                        .frame(height:50)
                }
            }
            .padding( )
        }
        
    }
}

struct LazyGridBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        LazyGridBootcamp()
    }
}
