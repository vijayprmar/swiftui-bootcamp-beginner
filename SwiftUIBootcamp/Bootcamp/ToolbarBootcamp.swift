//
//  ToolbarBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Vijay Parmar on 22/09/23.
//

import SwiftUI

struct ToolbarBootcamp: View {
    
    @State private var text:String = ""
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color.indigo.ignoresSafeArea()
                ScrollView {
                    
                    TextField("Placeholder", text: $text)
                    
                    Text("Hey How Are you")
                        .foregroundColor(.white)
                }
            }
            .navigationTitle("Toolbar")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "heart.fill")
                        
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "gear")
                }
            }
            .foregroundColor(.white)
            .navigationBarTitleDisplayMode(.inline)
            .toolbarTitleMenu {
                Button("Screen 1"){
                    
                }
                Button("Screen 2"){
                    
                }
            }
        }
    }
}

struct ToolbarBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToolbarBootcamp()
    }
}
