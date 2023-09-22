//
//  OnboardingView.swift
//  SwiftUIBootcamp
//
//  Created by Vijay Parmar on 18/09/23.
//

import SwiftUI

struct OnboardingView: View {
    
    //Onboarding states
    @State var onboardingState: Int = 0
    let transition:AnyTransition = .asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading))
    
    //Onboarding Inputs
    @State var name:String = ""
    @State var age:Double = 50
    @State var gender:String = ""
    @State var alertTitle:String = ""
    @State var showAlert:Bool = false

    //App Storage
    @AppStorage("name") var currentUserName:String?
    @AppStorage("age") var currentUserAge:Int?
    @AppStorage("gender") var currentUserGender:String?
    @AppStorage("signed_in") var currentUserSignedIn:Bool = false
    
    var body: some View {
        ZStack{
            //Content
            
            ZStack{
                
                switch onboardingState{
                case 0:welcomeSection
                        .transition(transition)
                case 1:addNameSection
                        .transition(transition)
                case 2:addAgeSection
                        .transition(transition)
                case 3:addGenderSection
                        .transition(transition)
                default :
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.green)
                }
                
                
            }
            
            
            //Buttons
            VStack{
                Spacer()
                signInButton
            }
            .padding(30)
        }
        .alert(isPresented: $showAlert) {
            return Alert(title: Text(alertTitle))
        }
    }
    
   
    
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            .background(Color.purple)
    }
}

//MARK: - COMPONENTS
extension OnboardingView{
    
    
    private var signInButton:some View{
        Text(onboardingState == 0 ? "Sign up" : onboardingState == 3 ? "Finish" : "Next")
            .font(.headline)
            .foregroundColor(.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(10)
            .onTapGesture {
                handleNextButtonPressed()
            }
      
    }
    
    
    private var welcomeSection:some View{
        VStack(spacing: 40){
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.white)
            Text("Find your match")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .overlay(
                    Capsule(style: .continuous)
                    .frame(height: 3)
                    .foregroundColor(.white)
                    ,alignment: .bottom
                )
            Text("This is the #1 app for finding your match online")
                .foregroundColor(.white)
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
    
    
    private var addNameSection:some View{
        
        VStack(spacing: 40){
            Spacer()
           
            Text("What's your name")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            TextField("Your name here...", text: $name)
                .font(.headline)
                .frame(height: 55)
                .background(Color.white)
                .cornerRadius(10)
           
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
   
    }
    
    private var addAgeSection:some View{
        
        VStack(spacing: 40){
            Spacer()
           
            Text("What's your age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            Text("\(String(format: "%.0f", age))")
                .foregroundColor(.white)
            Slider(value: $age, in: 18...100, step: 1)
                .accentColor(.white)
            
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
   
    }
    
    private var addGenderSection:some View{
        
        VStack(spacing: 20){
            Spacer()
           
            Text("What's your gender?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            Menu {
                Picker(selection: $gender, label: EmptyView()) {
                      Text("Male").tag("Male")
                      Text("Female").tag("Female")
                      Text("Non-Binary").tag("Non-Binary")
                  }
              } label: {
                  customLabel
              }
          
            Spacer()
            Spacer()
        }
        
        .padding(30)
   
    }
    
    var customLabel: some View {
       Text(gender.count > 1 ? gender : "Select a gender")
            .font(.headline)
            .foregroundColor(Color.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(10)
    }
    
}

//MARK: - FUNCTIONS
extension OnboardingView{
    
    
    func handleNextButtonPressed(){
        
        switch onboardingState{
        case 1:
            guard name.count >= 3 else{
                showAlert(title: "Your name must be at least 3 characters long! ☹️")
                return
            }
            
        case 3:
            
            guard gender.count > 1 else{
                showAlert(title: "Please select a gender before moving forward! 👫")
                return
            }
        default:
            break
            
        }
        
        
       //Go TO Next
        if onboardingState == 3{
            signIn()
        }else{
            withAnimation(.spring()) {
                onboardingState += 1
            }
        }
    }
    
    func signIn(){
        currentUserName = name
        currentUserAge = Int(age)
        currentUserGender = gender
        withAnimation(.spring()) {
            currentUserSignedIn = true
        }
        
    }
    
    func showAlert(title:String){
        alertTitle = title
        showAlert.toggle()
    }
    
    
}
