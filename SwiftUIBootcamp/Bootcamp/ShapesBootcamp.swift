//
//  ShapesBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Vijay Parmar on 03/04/23.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 8)
            .frame(width: 200,height: 100)
            
    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}
