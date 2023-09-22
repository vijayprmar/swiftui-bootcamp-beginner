//
//  TextBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Vijay Parmar on 03/04/23.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .font(.headline)
//            .multilineTextAlignment(.trailing)
//            .font(.body)
//            .fontWeight(.semibold)
//            .bold()
//        //    .underline()
//            .underline(true,color: .red)
//            .italic()
//            .strikethrough()
            .font(.system(size: 24,weight: .semibold,design: .rounded))
            .foregroundColor(.blue)
            .frame(width: 200,height: 100,alignment: .leading)
            .minimumScaleFactor(0.1)
         
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
