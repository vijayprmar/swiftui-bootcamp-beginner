//
//  BoxView.swift
//  SwiftUIBootcamp
//
//  Created by Vijay Parmar on 09/05/23.
//

import SwiftUI

struct BoxView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 8)
                  .fill(
                      LinearGradient(colors: [Color.random(),Color.random()], startPoint: .topLeading  , endPoint: .bottomTrailing)
                  )
                  .frame(width: 200,height: 200)
                  .shadow(radius: 10)
                  .padding()
    }
}

struct BoxView_Previews: PreviewProvider {
    static var previews: some View {
        BoxView()
    }
}
