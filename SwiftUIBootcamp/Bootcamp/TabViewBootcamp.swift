//
//  TabViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Vijay Parmar on 17/05/23.
//

import SwiftUI

struct TabViewBootcamp: View {
    var body: some View {
        TabView{
            Profile()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
            
            Text("Home")
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            
            Text("Browse")
                .tabItem {
                    Image(systemName: "globe")
                    Text("Browse")
                }
            
           
        }
        .accentColor(.green)
    }
}

struct Profile: View {
    var body: some View {
        
        VStack{
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 200, height: 200)
                .background(.blue)
                .cornerRadius(100)
                
            Text("Vijay Parmar")
            
        }
        
        
    }
}


struct TabViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBootcamp()
    }
}
