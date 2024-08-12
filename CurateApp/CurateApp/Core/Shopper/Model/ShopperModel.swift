//
//  ShopperModel.swift
//  CurateApp
//
//  Created by Melanie Ballard on 8/4/24.
//

import Foundation

struct Shopper: Identifiable, Codable, Hashable {
    
    let id: String
    let shopperUid: String
    let shopperName: String
    let shopperUsername : String
    var shopperBio : String
    var shopperImageURL: String
    var reviews: Int
    var rating: Double
    var numOfClients : Int
    var priceRange : [priceRange]
    var imageURLs : [StyleImages]
    var tags: [tags]
}

struct StyleImages : Identifiable, Codable, Hashable {
    
    let id: String
    let url: String
    let title: String
    let description: String
    var tags: [tags]
    var price: [priceRange]
    
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
    case boho
    case goth
    case punk
    case emo
    
    
    var title: String{
        switch self{
            case .preppy: return "Preppy"
            case .alternative: return "Alternative"
            case .earthy: return "Earthy"
            case .office: return "Office"
            case .trendy: return "Trendy"
            case .opium: return "Opium"
            case .formal: return "Formal"
            case .boho: return "Boho"
            case .goth: return "Goth"
            case .punk: return "Punk"
            case .emo: return "Emo"
            }
    }
    
    var id: Int { return self.rawValue }
} // end enum


enum priceRange: Int, Codable, Identifiable, Hashable
{

    case thrifted
    case affordable
    case brand
    case boutique
    case vintage
    case luxury
    
    
    var title: String{
        switch self{
            case .thrifted: return "Thrifted"
            case .affordable: return "Affordable"
            case .brand: return "Brand"
            case .boutique: return "Boutique"
            case .vintage: return "Vintage"
            case .luxury: return "Luxury"
        }
    }
    
    var description: String{
        switch self{
            case .thrifted: return "Clothes from second-hand shops like Salvation Army or Goodwill"
            case .affordable: return "Amazon basics, fast fashion"
            case .brand: return "National mall brands such as Pacsun or Urban Outfitters"
            case .boutique: return "Small businesses and independent designers"
            case .vintage: return "Sourced clothing from retailers or wholesale providers 20+ years old"
            case .luxury: return "High end designer brands, ready to wear runway"
        }
    }
    
    var id: Int { return self.rawValue }
} // end enum
