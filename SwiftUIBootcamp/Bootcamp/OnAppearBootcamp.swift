//
//  OnAppearBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Vijay Parmar on 17/05/23.
//

import SwiftUI

struct OnAppearBootcamp: View {
    @State var count : Int = 0
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVStack{
                    ForEach(0..<50){ _ in
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(height: 200)
                            .padding()
                            .onAppear{
                                count += 1
                            }
                    }
                }
            }
            .navigationTitle("On Appear \(count)")
        }
    }
}

struct OnAppearBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearBootcamp()
    }
}
