//
//  AuthService.swift
//  CurateApp
//
//  Created by Melanie Ballard on 8/9/24.
//

import Foundation
import Firebase
import FirebaseAuth
import FirebaseFirestore

class AuthService
{
    
    @Published var userSession: FirebaseAuth.User?
    
    static let shared = AuthService()
    
    init(){
        self.userSession = Auth.auth().currentUser
    }
    
    
    @MainActor
    func signIn(
        withEmail email : String,
        password: String
    ) async throws
    {
        do{
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
            try await UserService.shared.fetchCurrentUser()
        } catch {
            print("DEBUG: Failed to log in with error \(error.localizedDescription)")
        } // end do catch
    } // end func login
    
    @MainActor
    func createUser(withEmail email : String,
                    password: String,
                    confirmPassword: String,
                    userFirstName: String,
                    userLastName: String,
                    userUsername: String
    ) async throws
    {
        do{
            if password == confirmPassword {
                let result = try await Auth.auth().createUser(withEmail: email, password: password)
                self.userSession = result.user
                try await uploadUserData(withEmail: email, userFirstName: userFirstName, userLastName: userLastName, userUsername: userUsername, id: result.user.uid)
            } else {
                print("Passwords do not match")
            }
        } catch {
            print("DEBUG: Failed to create user with error \(error.localizedDescription)")
        } // end do catch
    } // end func create user
    
    
    func signOut()
    {
        try? Auth.auth().signOut() // sign out on backend
        self.userSession = nil     // removes session locally and updates routing
        UserService.shared.reset() // sets current user object to nil
    } // end signout func
    
    @MainActor
    private func uploadUserData(
        withEmail email : String,
        userFirstName: String,
        userLastName: String,
        userUsername: String,
        id: String
    ) async throws {
        let user = User(id: id, userFirstName: userFirstName, userLastName: userLastName, userUsername: userUsername)
        guard let userData = try? Firestore.Encoder().encode(user) else { return }
        do {
            try await Firestore.firestore().collection("Users").document(id).setData(userData)
            UserService.shared.currentUser = user
        } catch {
            print("DEBUG: Failed to upload user data with error \(error.localizedDescription)")
            throw error
        }
    }
    
} // end class auth service
