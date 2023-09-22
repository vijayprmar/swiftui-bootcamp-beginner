//
//  ListBoocamp.swift
//  SwiftUIBootcamp
//
//  Created by Vijay Parmar on 11/05/23.
//

import SwiftUI

struct ListBootcamp: View {
    
    
    @State var fruits : [String] = ["apple" , "orange", "banana", "peach"]
    
    var body: some View {
        
        NavigationView {
            List{
                
                Section(header:
                            Text("Fruits")
                    .font(.headline)
                    .foregroundColor(.pink)
                    ) {
                    ForEach(fruits,id: \.self){ fruit in
                        Text(fruit.capitalized)
                    }
                    .onDelete { indexSet in
                        fruits.remove(atOffsets: indexSet)
                    }
                    .onMove { indices, newOffset in
                        fruits.move(fromOffsets: indices, toOffset: newOffset)
                    }
                }
            
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Grocery List")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(leading: EditButton())
        }
        
        
        
    }
}

struct ListBoocamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootcamp()
    }
}
