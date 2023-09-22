//
//  NavigationViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Vijay Parmar on 11/05/23.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        
        NavigationView {
            ScrollView{

                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    Text("Hello, World!")
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                }
                .navigationTitle("All Boxes")
                .navigationBarItems(leading:
                                    
                                            NavigationLink(destination: Text("Second Screen"),label: {
                    Image(systemName: "person")
                    
                })
                    
                                , trailing: Image(systemName:"gear"))
        }
    }
}

struct NavigationViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootcamp()
    }
}
