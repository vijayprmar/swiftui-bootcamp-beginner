//
//  ListSwipeActionBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Vijay Parmar on 21/09/23.
//

import SwiftUI

struct ListSwipeActionBootcamp: View {
    
    @State var fruits : [String] = ["apple" , "orange", "banana", "peach"]
    
    var body: some View {
        List{
            
            ForEach(fruits, id: \.self){ fruit in
                Text(fruit.capitalized)
                    .swipeActions(edge: .trailing,allowsFullSwipe: true) {
                        Button("Archive"){
                            
                            
                        }
                        .tint(.yellow)
                        Button("Save"){
                            
                            
                        }.tint(.green)
                        Button("Junc"){
                            
                            
                        }
                        .tint(.blue)
                    }
            }
            
            
        }
    }
    
    func delete(indexSet:IndexSet){
        
    }
    
}

struct ListSwipeActionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListSwipeActionBootcamp()
    }
}
