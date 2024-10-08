//
//  ExploreView.swift
//  CurateApp
//
//  Created by Melanie Ballard on 8/4/24.
//

import SwiftUI

struct ExploreView: View {
    
    @StateObject var viewModel = ExploreModel(service: ExploreService())
    
    var body: some View {
        NavigationStack{
            ScrollView(showsIndicators : false){
                LazyVStack(alignment: .leading){
                    Text("Featured Shoppers")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.horizontal)
                        .padding(.top, 4)
                    ForEach(viewModel.shoppers) { shopper in
                        NavigationLink(value: shopper)
                        {
                            FeaturedShopperView(shopper: shopper)
                                .frame(height: 250)
                        }
                    }
                    
                }
            }
            .navigationTitle("Curate")
            .navigationDestination(for: Shopper.self) { shopper in
                ShopperProfileView(shopper: shopper)
                    .navigationBarBackButtonHidden()
            }
            .tint(.black)
        }
    }
}

#Preview {
    ExploreView()
}
