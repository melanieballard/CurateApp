//
//  ProfileView.swift
//  CurateApp
//
//  Created by Melanie Ballard on 8/4/24.
//

import SwiftUI
import FirebaseAuth

struct SignInView: View {
    
    @StateObject var model = SignInModel()
    
    @State private var isLoggedIn = false
    
    var body: some View {
        
        NavigationStack{
            ZStack {
                RoundedRectangle(cornerRadius: 30, style: .continuous)
                    .foregroundStyle(LinearGradient(colors: [.purple, .white], startPoint: .bottomLeading, endPoint: .topTrailing))
                
                VStack(spacing: 5) {
                    Text("Curate")
                        .foregroundStyle(.white)
                        .font(.system(size: 64, weight: .bold, design: .rounded))
                        .offset(x: -80)
                    
                    Text("Begin curating your wardrobe today")
                        .foregroundStyle(Color.white)
                        .font(.system(size: 16, weight: .bold, design: .rounded))
                        .offset(x: -35)
                        .padding(.bottom, 50)
                    
                    
                    TextField("Email", text: $model.email)
                        .padding()
                        .font(.system(size: 16, design: .rounded))
                        .background(Color.white.opacity(0.3))
                        .cornerRadius(30)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                        .frame(width: 350)
                        .padding(.bottom, 20)
                    
                    SecureField("Password", text: $model.password)
                        .padding()
                        .font(.system(size: 16, design: .rounded))
                        .background(Color.white.opacity(0.3))
                        .cornerRadius(30)
                        .autocorrectionDisabled()
                        .frame(width: 350)
                        .padding(.bottom, 20)
                    
                    Button(action: {
                        Task{ try await model.signIn() }
                    }) {
                        Text("Sign In")
                            .foregroundColor(.purple)
                            .font(.system(size: 16, design: .rounded))
                            .padding()
                            .frame(width: 350)
                            .background(Color.white)
                            .cornerRadius(30)
                    }
                    
                    NavigationLink(destination: SignUpView().navigationBarBackButtonHidden()) {
                        Text("Don't have an account? Sign Up")
                            .foregroundColor(.white)
                            .font(.system(size: 14, weight: .bold, design: .rounded))
                    }
                } // end VStack
                .frame(width: 400)
            }// end ZStack
            .ignoresSafeArea(.all)
        } //end NavStack
    }
}


#Preview {
    SignInView()
}
