//
//  AppStorageBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Vijay Parmar on 18/09/23.
//

import SwiftUI

struct AppStorageBootcamp: View {
    
   // @State var currentUserName:String?
    @AppStorage("name") var currentUserName:String?
    
    var body: some View {
        VStack(spacing: 20, content:    {
            
            Text(currentUserName ?? "Add Name here")
            
            if let name = currentUserName{
                Text(name)
            }
            
            Button("Save".uppercased()) {
                let name = "Vijay"
                currentUserName = name
               // UserDefaults.standard.set(name, forKey: "name")
                
            }
        })
//        .onAppear{
//            currentUserName = UserDefaults.standard.string(forKey: "name")
//        }
    }
}

struct AppStorageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBootcamp()
    }
}
