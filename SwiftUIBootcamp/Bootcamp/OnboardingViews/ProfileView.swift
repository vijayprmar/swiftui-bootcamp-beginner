//
//  ProfileView.swift
//  SwiftUIBootcamp
//
//  Created by Vijay Parmar on 20/09/23.
//

import SwiftUI

struct ProfileView: View {
    
    @AppStorage("name") var currentUserName:String?
    @AppStorage("age") var currentUserAge:Int?
    @AppStorage("gender") var currentUserGender:String?
    @AppStorage("signed_in") var currentUserSignedIn:Bool = false
    
    var body: some View {
        VStack(spacing: 10){
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            Text(currentUserName ?? "Your name here")
            Text("This user is \(currentUserAge ?? 0) years old")
            Text("Their Gender is \(currentUserGender ?? "unknown")")
            
            Text("SIGN OUT")
                .foregroundColor(.white)
                .font(.headline)
                
                .frame(height: 55)
                .frame(maxWidth:.infinity)
                .background(.black)
                .cornerRadius(10)
                .onTapGesture {
                    signOut()
                }
            
            
        }
        .font(.title)
        .foregroundColor(.purple)
        .padding()
        .padding(.vertical, 40)
        .background(.white)
        .cornerRadius(10)
        .shadow(radius: 10)
    }
    
    func signOut(){
        
        currentUserName = nil
        currentUserGender = nil
        currentUserAge = nil
        currentUserSignedIn = false
        
    }
    
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
