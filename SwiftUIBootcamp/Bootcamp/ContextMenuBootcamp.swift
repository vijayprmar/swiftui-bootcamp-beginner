//
//  ContextMenuBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Vijay Parmar on 15/05/23.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State var backgroundColor:Color = .blue
    
    var body: some View {
        VStack(alignment: .leading,spacing: 10){
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftfull Thinking")
                .font(.headline)
            Text("How to use context menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(backgroundColor.cornerRadius(30))
        .contextMenu(menuItems: {
            
            Button(action: {
                backgroundColor = .yellow
            }, label: {
                Label("Trending", systemImage: "flame.fill")
                    
                
            })
            
            
            Button(action: {
                backgroundColor = .green
            }, label: {
                Text("Report post")
            })
            
            Button(action: {
                
            }, label: {
                Text("Like Post")
                Image(systemName: "heart.fill")
            })
            
        })
        
    }
}

struct ContextMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootcamp()
    }
}
