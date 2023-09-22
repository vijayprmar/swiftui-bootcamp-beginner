//
//  AsyncImageBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Vijay Parmar on 20/09/23.
//

import SwiftUI

struct AsyncImageBootcamp: View {
    
    let url = URL(string: "https://picsum.photos/400")
    
    var body: some View {
        
        AsyncImage(url: url,content: { image in
            image
                .resizable()
                .frame(width: 300, height: 300)
                .scaledToFit()
                .cornerRadius(10)
        },placeholder: {
            ProgressView()
        })
            
    }
}

struct AsyncImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageBootcamp()
    }
}
