//
//  ViewModelBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Vijay Parmar on 19/06/23.
//

import SwiftUI

struct FruitModel:Identifiable{
    
    let id:String = UUID().uuidString
    let name:String
    let count:Int
    
}

class FruiViewModel:ObservableObject{
    
   @Published var fruitArray : [FruitModel] = []
    
    func getFruits(){

        fruitArray.append(FruitModel(name: "Banana", count: 50))
        fruitArray.append(FruitModel(name: "Mango", count: 55))
        fruitArray.append(FruitModel(name: "Watermalon", count: 51))

    }

    func removeFrom(indexSet:IndexSet){
        fruitArray.remove(atOffsets: indexSet)
    }
    
}


struct ViewModelBootcamp: View {
    
    @ObservedObject var fruitViewModel :FruiViewModel = FruiViewModel()
    
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(fruitViewModel.fruitArray){ fruit in
                    HStack{
                        Text("\(fruit.count)")
                            .foregroundColor(.red)
                        Text("\(fruit.name)")
                            .font(.headline)
                            .bold()
                    }
                    
                }
                .onDelete { indexSet in
                    fruitViewModel.removeFrom(indexSet:indexSet)
                }
            }
            
            .listStyle(.grouped)
            .navigationTitle("Fruit List")
            .onAppear{
                fruitViewModel.getFruits()
            }
        }
        
    }

}

struct ViewModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelBootcamp()
    }
}
