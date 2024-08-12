//
//  ExploreService.swift
//  CurateApp
//
//  Created by Melanie Ballard on 8/4/24.
//

import Foundation

class ExploreService {
    func fetchShoppers() async throws -> [Shopper] {
        return DeveloperPreview.shared.shoppers
    }
}
