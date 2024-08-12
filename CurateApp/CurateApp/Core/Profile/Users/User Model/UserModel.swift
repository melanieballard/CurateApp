//
//  UserModel.swift
//  CurateApp
//
//  Created by Melanie Ballard on 8/7/24.
//

import Foundation

struct User : Identifiable, Codable, Hashable {
    
    let id: String
    let userFirstName: String
    let userLastName: String
    let userUsername: String
    var userBio: String?
    var userProfileURL: String?
    
}
