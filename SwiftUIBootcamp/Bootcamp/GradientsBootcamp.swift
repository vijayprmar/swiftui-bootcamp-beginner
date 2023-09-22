//
//  GradientsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Vijay Parmar on 10/04/23.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        Circle()
            .fill(
                //LinearGradient(gradient: Gradient(colors: [Color.red,.blue]), startPoint: .leading, endPoint: .trailing )
                AngularGradient(gradient: Gradient(colors: [Color.red,.blue]), center: .center,angle:.degrees(180+45))
            )
    }
}

struct GradientsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientsBootcamp()
    }
}
