//
//  ResizableSheetsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Vijay Parmar on 22/09/23.
//

import SwiftUI

struct ResizableSheetsBootcamp: View {
    
    @State private var showSheet:Bool = false
    
    var body: some View {
        Button("Click me!"){
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet) {
            MyNextView()
                .presentationDetents([.fraction(0.3),.medium,.large])
        }
    }
}

struct MyNextView:View{
    
    var body: some View{
        
        ZStack {
            Color.blue.ignoresSafeArea()
            Text("Hello Dhariiii")
        }
    }
    
}


struct ResizableSheetsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ResizableSheetsBootcamp()
    }
}
