//
//  IconsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Vijay Parmar on 10/04/23.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "heart.fill")
        
            .font(.system(size: 100))
            .foregroundColor(.red)
            .frame(width: 300,height: 300)
            
    }
}

struct IconsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootcamp()
    }
}
