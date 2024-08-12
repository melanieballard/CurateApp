//
//  SignUpView.swift
//  CurateApp
//
//  Created by Melanie Ballard on 8/7/24.
//

import SwiftUI
import FirebaseAuth

struct SignUpView: View {
    
    @Environment (\.dismiss) var dismiss
    
    @StateObject var model = SignUpModel()
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    @State private var showingAlert = false
    @State private var alertMessage = ""

    var body: some View {
        
        ZStack {
            
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .foregroundStyle(LinearGradient(colors: [.purple, .white], startPoint: .bottomLeading, endPoint: .topTrailing))
            
            VStack(alignment: .leading) {
                
                Button(action: { dismiss() }) {
                    Image(systemName: "chevron.backward")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .tint(.purple)
                        .padding(.top, 50)
                }
                .padding(.bottom, 100)
                
                
                Text("Create Account")
                    .foregroundStyle(.white)
                    .font(.system(size: 40, weight: .semibold, design: .rounded))
                
                HStack{
                    TextField("First Name", text: $model.firstname)
                        .padding()
                        .font(.system(size: 16, design: .rounded))
                        .background(Color.white.opacity(0.3))
                        .cornerRadius(30)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                        .frame(width: 170)
                        .padding(.bottom, 20)
                    TextField("Last Name", text: $model.lastname)
                        .padding()
                        .font(.system(size: 16, design: .rounded))
                        .background(Color.white.opacity(0.3))
                        .cornerRadius(30)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                        .frame(width: 170)
                        .padding(.bottom, 20)
                }
                
                TextField("Username", text: $model.username
                )
                    .padding()
                    .font(.system(size: 16, design: .rounded))
                    .background(Color.white.opacity(0.3))
                    .cornerRadius(30)
                    .keyboardType(.emailAddress)
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                    .frame(width: 350)
                    .padding(.bottom, 20)
                
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
                
                SecureField("Confirm Password", text: $model.confirmPassword)
                    .padding()
                    .font(.system(size: 16, design: .rounded))
                    .background(Color.white.opacity(0.3))
                    .cornerRadius(30)
                    .autocorrectionDisabled()
                    .frame(width: 350)
                    .padding(.bottom, 20)
                
                Button(action: {
                    Task {try await model.signUp()}
                }) {
                    Text("Sign Up")
                        .foregroundColor(.purple)
                        .font(.system(size: 16, design: .rounded))
                        .padding()
                        .frame(width: 350)
                        .background(Color.white)
                        .cornerRadius(30)
                }
            } //end VStack
            .alert(isPresented: $showingAlert) {
                Alert(title: Text("Error"), message: Text(alertMessage), dismissButton: .default(Text("OK")))
            }
        } //end ZStack
        .ignoresSafeArea(.all)
    }

    /*func signUp() {
        guard password == confirmPassword else {
            alertMessage = "Passwords do not match"
            showingAlert = true
            return
        }
        
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if let error = error {
                alertMessage = error.localizedDescription
                showingAlert = true
            } else {
                // Handle successful account creation
                alertMessage = "Account created successfully!"
                showingAlert = true
            }
        }
    }     */
}


#Preview {
    SignUpView()
}
