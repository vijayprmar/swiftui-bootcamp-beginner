//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Vijay Parmar on 11/04/23.

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [.blue,.purple]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    
                    ).frame(width: 100,height: 100)
                    .shadow(color: .purple, radius: 10,x: 0,y: 10)
                    .overlay(
                        Circle()
                            .fill(.blue)
                            .frame(width: 35,height: 35)
                            .overlay (
                                Text("5")
                                    .foregroundColor(.white)
                            ),alignment: .bottomTrailing
                    )
            )
    }
}

struct BackgroundAndOverlayBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlayBootcamp()
    }
}
