//
//  SheetsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Vijay Parmar on 11/05/23.
//

import SwiftUI

struct SheetsBootcamp: View {
    
    @State var showSheet:Bool = false
    
    var body: some View {
        ZStack{
            Color.green
                .ignoresSafeArea()
            
            Button(action:{
                showSheet.toggle()
            },label: {
                Text("Click")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background(.white)
                    .cornerRadius(20)
                
            })
            .fullScreenCover(isPresented: $showSheet, content: {
                          PopUpView()
                      })
//            .sheet(isPresented: $showSheet, content: {
//                PopUpView()
//            })
            
        }
    }
}


struct PopUpView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack{
            Text("How Are You?")
            HStack{
                Button("YES"){
                    presentationMode.wrappedValue.dismiss()
                }
                
                Button("NO"){
                    
                }
            }
            .padding()
        }
    }
}


struct SheetsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SheetsBootcamp()
    }
}
