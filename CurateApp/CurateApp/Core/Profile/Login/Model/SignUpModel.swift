//
//  SignUpModel.swift
//  CurateApp
//
//  Created by Melanie Ballard on 8/11/24.
//

import Foundation


class SignUpModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    @Published var confirmPassword = ""
    @Published var firstname = ""
    @Published var lastname = ""
    @Published var username = ""
    
    @MainActor
    func signUp() async throws {
        try await AuthService.shared.createUser(withEmail: email, password: password, confirmPassword: confirmPassword, userFirstName: firstname, userLastName: lastname, userUsername: username)
    }
}
