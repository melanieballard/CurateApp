//
//  ShopperModel.swift
//  Curate
//
//  Created by Melanie Ballard on 8/3/24.
//

import Foundation

struct Shopper: Identifiable, Codable, Hashable {
    
    let id: String
    let shopperUid: String
    let shopperName: String
    var shopperBio : String
    var shopperImageURL: String
    var reviews: Int
    var rating: Double
    var imageURLs : [String]
    var tags: [tags]
}

enum tags: Int, Codable, Identifiable, Hashable
{
    case preppy
    case alternative
    case earthy
    case office
    case trendy
    case opium
    case formal
    
    
    var title: String{
        switch self{
            case .preppy: return "Preppy"
            case .alternative: return "Alternative"
            case .earthy: return "Earthy"
            case .office: return "Office"
            case .trendy: return "Trendy"
            case .opium: return "Opium"
            case .formal: return "Formal"
            }
    }
    
    var id: Int { return self.rawValue }
} // end enum
