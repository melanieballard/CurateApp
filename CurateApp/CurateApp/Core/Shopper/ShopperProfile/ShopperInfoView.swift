//
//  ShopperInfoView.swift
//  CurateApp
//
//  Created by Melanie Ballard on 8/4/24.
//

import SwiftUI

struct ShopperInfoView: View {
    
    let shopper : Shopper
    
    init(shopper: Shopper){
        self.shopper = shopper
    }
    
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 12){
            
            Text("Shopper Information")
                .font(.title2)
            
            Text("\(shopper.numOfClients) Clients")
                .font(.headline)
            
            HStack{
                Text("Tags:")
                    .font(.headline)
                TagView(tags: shopper.tags)
            }
            HStack{
                Text("Type:")
                    .font(.headline)
                StyleCategoryView(style: shopper.priceRange)
            }
            
        } //end VStack
        .padding()
        
        .background(.white)
            .cornerRadius(10)
            .shadow(radius: 5, x: 0, y: 3)
            .padding()
    }
}

#Preview {
    ShopperInfoView(shopper: DeveloperPreview.shared.shoppers[0])
}
