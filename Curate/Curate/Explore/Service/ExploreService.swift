//
//  ExploreService.swift
//  Curate
//
//  Created by Melanie Ballard on 8/3/24.
//

import Foundation

class ExploreService {
    func fetchShoppers() async throws -> [Shopper] {
        return DeveloperPreview.shared.shoppers
    }
}
