//
//  DeveloperPreview.swift
//  Curate
//
//  Created by Melanie Ballard on 8/3/24.
//

import Foundation

class DeveloperPreview
{
    static let shared = DeveloperPreview()
    
    var shoppers: [Shopper] = [
        .init(
            id: NSUUID().uuidString,
            shopperUid: NSUUID().uuidString,
            shopperName: "Melanie Ballard",
            shopperBio: "Hello!",
            shopperImageURL: "male-profile-photo",
            reviews: 3,
            rating: 4.9,
            imageURLs: ["test-image-1", "test-image-2", "test-image-3"],
            tags: [.preppy, .trendy]
        ),
        .init(
            id: NSUUID().uuidString,
            shopperUid: NSUUID().uuidString,
            shopperName: "Anna Stroh",
            shopperBio: "꒰ა ♡ ໒꒱ selling everything i own ꒰ა ♡ ໒꒱ open to negotiations ꒰ა ♡ ໒꒱ shipping all orders 6/24!",
            shopperImageURL: "anna-profile-image",
            reviews: 3,
            rating: 4.9,
            imageURLs: ["anna-image-1", "anna-image-2", "anna-image-3", "anna-image-4", "anna-image-5", "anna-image-6"],
            tags: [.alternative, .office]
        )
    ]
}
