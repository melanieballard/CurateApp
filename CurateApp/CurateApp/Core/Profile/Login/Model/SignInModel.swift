//
//  SignInModel.swift
//  CurateApp
//
//  Created by Melanie Ballard on 8/11/24.
//

import Foundation

class SignInModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    
    @MainActor
    func signIn() async throws{
        try await AuthService.shared.signIn(withEmail: email, password: password)
    }
}
