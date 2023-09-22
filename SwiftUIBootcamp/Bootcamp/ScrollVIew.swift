//
//  ScrollVIew.swift
//  SwiftUIBootcamp
//
//  Created by Vijay Parmar on 09/05/23.
//

import SwiftUI

struct ScrollVIew: View {
    var body: some View {
        ScrollView(.vertical) {
            LazyVStack {
                ForEach(0..<10) { item in
                    ScrollView(.horizontal){
                        LazyHStack{
                            ForEach(0..<20){ index in
                                BoxView()
                            }
                        }
                    }
                }
            }
        }
    
    }
}

struct ScrollVIew_Previews: PreviewProvider {
    static var previews: some View {
        ScrollVIew()
    }
}


public extension Color {

    static func random(randomOpacity: Bool = false) -> Color {
        Color(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1),
            opacity: randomOpacity ? .random(in: 0...1) : 1
        )
    }
}
