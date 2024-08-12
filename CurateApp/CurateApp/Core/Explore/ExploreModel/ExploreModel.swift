//
//  ExploreModel.swift
//  CurateApp
//
//  Created by Melanie Ballard on 8/4/24.
//

import Foundation

class ExploreModel : ObservableObject {
    
    @Published var shoppers = [Shopper]()
    private let service: ExploreService
    private var shoppersCopy = [Shopper]()
    
    init(service: ExploreService) {
            self.service = service
            
            Task { await fetchShoppers() }
        }
    
    func fetchShoppers() async {
            do{
                self.shoppers = try await service.fetchShoppers()
                self.shoppersCopy = shoppers
            }catch {
                print("DEBUG: Failed to fetch shoppers with error \(error.localizedDescription)")
            }
        }
}
