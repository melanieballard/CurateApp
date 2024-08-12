//
//  DeveloperPreview.swift
//  CurateApp
//
//  Created by Melanie Ballard on 8/4/24.
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
            shopperUsername: "melb",
            shopperBio: "Big closet clean out happening!! Daily posts. Message for questions & offers 💋",
            shopperImageURL: "melanie-profile-image",
            reviews: 14,
            rating: 5.0,
            numOfClients: 30,
            priceRange: [.thrifted, .vintage],
            imageURLs: [
                StyleImages(
                    id: NSUUID().uuidString,
                    url: "test-image-1",
                    title: "Affordable Fit",
                    description: "An outfit for some occasion.",
                    tags: [.preppy],
                    price: [.affordable]
                    ),
                StyleImages(
                    id: NSUUID().uuidString,
                    url: "test-image-2",
                    title: "Cute Boho",
                    description: "Earthy fun alternative and cool.",
                    tags: [.trendy, .alternative],
                    price: [.thrifted, .vintage]
                    ),
                StyleImages(
                    id: NSUUID().uuidString,
                    url: "test-image-3",
                    title: "Street Style",
                    description: "Cigarette warehouse sale core.",
                    tags: [.office, .boho],
                    price: [.luxury, .boutique]
                    )
                ],
            tags: [.preppy, .trendy]
        ),
        .init(
            id: NSUUID().uuidString,
            shopperUid: NSUUID().uuidString,
            shopperName: "Anna Stroh",
            shopperUsername: "cherryangel",
            shopperBio: "꒰ა ♡ ໒꒱ selling everything i own ꒰ა ♡ ໒꒱ open to negotiations ꒰ა ♡ ໒꒱ shipping all orders 6/24!",
            shopperImageURL: "anna-profile-image",
            reviews: 4,
            rating: 2.4,
            numOfClients: 10,
            priceRange: [.boutique, .vintage, .brand],
            imageURLs: [
                StyleImages(
                    id: NSUUID().uuidString,
                    url: "anna-image-1",
                    title: "Stevie",
                    description: "Dark going out flared outfit.",
                    tags: [.alternative, .goth],
                    price: [.affordable, .thrifted, .vintage]
                    ),
                StyleImages(
                    id: NSUUID().uuidString,
                    url: "anna-image-2",
                    title: "Leather for School",
                    description: "A cute yet modern take on 90's fashion trends.",
                    tags: [.boho, .earthy],
                    price: [.affordable, .brand]
                    ),
                StyleImages(
                    id: NSUUID().uuidString,
                    url: "anna-image-3",
                    title: "Office Plant",
                    description: "Earthy button up for office wear.",
                    tags: [.preppy, .alternative],
                    price: [.thrifted, .vintage]
                    ),
                StyleImages(
                    id: NSUUID().uuidString,
                    url: "anna-image-4",
                    title: "Office Poncho",
                    description: "Boho cute but professional.",
                    tags: [.formal, .office],
                    price: [.boutique, .luxury, .vintage]
                    ),
                StyleImages(
                    id: NSUUID().uuidString,
                    url: "anna-image-5",
                    title: "Modern Woman",
                    description: "Basics but with elevation.",
                    tags: [.formal, .emo],
                    price: [.brand, .affordable, .thrifted]
                    ),
                StyleImages(
                    id: NSUUID().uuidString,
                    url: "anna-image-6",
                    title: "Beachy",
                    description: "Beach hippie outfit. I love a shawl.",
                    tags: [.earthy, .formal],
                    price: [.boutique]
                    )
            ],
            tags: [.alternative, .office]
        ),
        .init(
            id: NSUUID().uuidString,
            shopperUid: NSUUID().uuidString,
            shopperName: "Chinenye Ozowalu",
            shopperUsername: "chiphoto",
            shopperBio: "Photographer with a side passion for clothes and styling!",
            shopperImageURL: "anna-profile-image",
            reviews: 10,
            rating: 4.4,
            numOfClients: 22,
            priceRange: [.thrifted, .luxury, .vintage],
            imageURLs: [
                StyleImages(
                    id: NSUUID().uuidString,
                    url: "chi-image-1",
                    title: "String",
                    description: "test",
                    tags: [.earthy, .formal],
                    price: [.boutique]
                    ),
                StyleImages(
                    id: NSUUID().uuidString,
                    url: "chi-image-2",
                    title: "String",
                    description: "test",
                    tags: [.formal, .office],
                    price: [.vintage, .thrifted]
                    ),
                StyleImages(
                    id: NSUUID().uuidString,
                    url: "chi-image-3",
                    title: "String",
                    description: "test",
                    tags: [.punk, .emo],
                    price: [.brand, .affordable]
                    ),
            ],
            tags: [.punk, .formal]
        )
    ]
}
