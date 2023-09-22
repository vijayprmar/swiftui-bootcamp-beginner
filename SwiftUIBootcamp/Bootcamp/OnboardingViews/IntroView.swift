//
//  IntroView.swift
//  SwiftUIBootcamp
//
//  Created by Vijay Parmar on 18/09/23.
//

import SwiftUI

struct IntroView: View {
    
    @AppStorage("signed_in") var currentUserSignedIn:Bool = false
    
    var body: some View {
        ZStack{
            RadialGradient(gradient:Gradient(
                colors:[Color.purple,Color.indigo]),
                           center:.topLeading,
                           startRadius: 5,
                           endRadius:UIScreen.main.bounds.height).ignoresSafeArea()
        
            if currentUserSignedIn{
                ProfileView()
                    .padding()
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .top)))
            }else{
                OnboardingView()
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .top)))
            }

        }
    }
    
    
    
    
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
