//
//  ActionSheetBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Vijay Parmar on 11/05/23.
//

import SwiftUI

struct ActionSheetBootcamp: View {
    
    @State var showActionSheet:Bool = false
    
    var body: some View {
        Button("Click Me"){
            showActionSheet.toggle()
        }
        .actionSheet(isPresented: $showActionSheet, content: {
            ActionSheet(title: Text("This is Title"),message: Text("This is message"),
                        buttons: [.default(Text("Default")),.destructive(Text("Destructive")),.cancel()])
                                          
        })
    }
}

struct ActionSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetBootcamp()
    }
}
