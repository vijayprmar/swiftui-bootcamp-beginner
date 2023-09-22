//
//  EnvironmentObjectBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Vijay Parmar on 14/09/23.
//

import SwiftUI
//ObservedObject
//StateObject
//EnvironmentObject

class EnvironmentViewModel:ObservableObject{
    
    @Published var dataArray:[String] = []
    
    init(){
        getData()
    }
    
    func getData(){
        self.dataArray.append("iPhone")
        self.dataArray.append("iPad")
        self.dataArray.append("Mac")
        self.dataArray.append("Watch")
    }
}

struct EnvironmentObjectBootcamp: View {
    
    @StateObject var viewModel : EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationView{
            List{
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink {
                        DetailView(selectedItem: item)
                    } label: {
                        Text(item)
                    }
                }
            }
            .navigationTitle("Apple Devices")
        }
        .environmentObject(viewModel)
    }
}

struct DetailView:View{
    
    let selectedItem:String
   
    var body: some View{
        ZStack{
            //Background
            Color.orange.ignoresSafeArea()
            
            //forground
            NavigationLink(destination:FinalView(),label: {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundColor(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(.white)
                .cornerRadius(30)
            })
            
        }
    }
    
    
}

struct FinalView:View{
    
    @EnvironmentObject var viewModel : EnvironmentViewModel
    
    var body: some View{
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.blue,.pink]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(viewModel.dataArray, id: \.self, content: { item in
                        Text(item)
                    })
                }
                .foregroundColor(.white)
                .font(.largeTitle)
                .fontWeight(.bold)
            }
            
        }
    }
    
}


struct EnvironmentObjectBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectBootcamp()
        //DetailView(selectedItem: "iPhone")
       // FinalView()
    }
}
