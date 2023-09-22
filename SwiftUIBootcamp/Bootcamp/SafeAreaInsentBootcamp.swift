//
//  SafeAreaInsentBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Vijay Parmar on 22/09/23.
//

import SwiftUI

struct SafeAreaInsentBootcamp: View {
    var body: some View {
        NavigationStack{
            List(0..<10){_ in
                Rectangle()
                    .frame(height: 300)
            }
            .navigationTitle("Safe area inset")
           
            .safeAreaInset(edge: .bottom) {
                Text("Hi")
                    .frame(maxWidth: .infinity)
                    .background(.yellow)
            }
        }
    }
}

struct SafeAreaInsentBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaInsentBootcamp()
    }
}
