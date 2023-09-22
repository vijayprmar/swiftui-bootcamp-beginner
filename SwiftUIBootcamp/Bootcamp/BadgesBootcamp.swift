//
//  BadgesBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Vijay Parmar on 21/09/23.
//

import SwiftUI

struct BadgesBootcamp: View {
    var body: some View {
        TabView{
            Color.green
                .tabItem {
                    Image(systemName: "house")
                    Text("Hello")
                }
            
            Color.red
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Hello")
                }
                .badge(2)
            
            
        }
    }
}

struct BadgesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BadgesBootcamp()
    }
}
