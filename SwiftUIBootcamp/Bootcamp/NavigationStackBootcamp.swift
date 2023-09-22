//
//  NavigationStackBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Vijay Parmar on 22/09/23.
//

import SwiftUI

struct NavigationStackBootcamp: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(spacing: 40) {
                    ForEach(0..<10){ x in
                        NavigationLink(value: x) {
                            Text("Click Me \(x)")
                        }
                        
                    }
                }
            }
            .navigationTitle("Nav Bootcamp")
            .navigationDestination(for: Int.self) { value in
                MySecondScreen(value: value)
            }
        }
    }
}

struct MySecondScreen:View{
    let value:Int
    init(value: Int) {
        self.value = value
        print("INIT SCREEN : \(value)")
    }
    
    var body: some View{
        Text("Screen \(value)")
    }
    
}


struct NavigationStackBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStackBootcamp()
    }
}
