//
//  UserService.swift
//  CurateApp
//
//  Created by Melanie Ballard on 8/9/24.
//

import Foundation
import Firebase
import FirebaseAuth
import FirebaseFirestore

class UserService
{
    @Published var currentUser: User?
    
    static let shared = UserService()
    
    init() {
        Task { try await  fetchCurrentUser() }
    }
    
    @MainActor
    func fetchCurrentUser() async throws
    {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        let snapshot = try await Firestore.firestore().collection("Users").document(uid).getDocument()
        let user = try snapshot.data(as: User.self)
        self.currentUser = user
    } // end func fetchcurrentuser
    
    static func fetchUsers() async throws -> [User]
    {
        guard let currentUid = Auth.auth().currentUser?.uid else { return [] }
        let snapshot = try await Firestore.firestore().collection("Users").getDocuments()
        let users = snapshot.documents.compactMap({try? $0.data(as: User.self) })
        return users.filter({$0.id != currentUid})
    } // end func fetch users
    
    static func fetchUser(withUid uid: String) async throws -> User {
        let snapshot = try await Firestore.firestore().collection("Users").document(uid).getDocument()
        return try snapshot.data(as: User.self)
        
    } // end func fetch user
    
    func reset() {
        self.currentUser = nil
    } // end func reset
    
    @MainActor
    func updateUserProfileImage(withImageURL imageUrl: String) async throws {
        guard let currentUid = Auth.auth().currentUser?.uid else { return }
        try await Firestore.firestore().collection("Users").document(currentUid).updateData([
            "profileImageUrl": imageUrl
        ])
        self.currentUser?.userProfileURL = imageUrl
    } // end func update user profile image
} // end class user service
