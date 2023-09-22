//
//  AlertBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Vijay Parmar on 11/05/23.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State var showAlert:Bool = false
    
    var body: some View {
        Button("Click here"){
            showAlert.toggle()
        }
        .alert(isPresented: $showAlert, content: {
            Alert(
                title: Text("Alert"),
                message: Text("This is message"),
                primaryButton: .destructive(Text("Delete"),action:{
                                                print("Hi")
                                            }),
                secondaryButton: .cancel())
        })
    }
}

struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}
