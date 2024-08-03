//
//  MainpageView.swift
//  Curate
//
//  Created by Melanie Ballard on 7/13/24.
//

import SwiftUI

struct MainpageView: View {
    var body: some View {
        NavigationView{
            ScrollView(showsIndicators : false){
                LazyVStack(alignment: .leading){
                    Text("Featured Shoppers")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.horizontal)
                        .padding(.top, 4)
                    FeaturedShopperView()
                    FeaturedShopperView()
                    FeaturedShopperView()
                    FeaturedShopperView()
                }
            }
            .navigationTitle("Curate")
        }
    }
}

#Preview {
    MainpageView()
}
