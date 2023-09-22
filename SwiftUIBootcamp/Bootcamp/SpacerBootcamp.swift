//
//  SpacerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Vijay Parmar on 19/04/23.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        HStack(spacing:0){
            Rectangle()
                .frame(width: 100,height: 100)
            Spacer()
            Rectangle()
                .fill(.red)
                .frame(width: 100,height: 100)
        }
        .background(.blue)
    }
}

struct SpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamp()
    }
}
