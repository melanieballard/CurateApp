//
//  ShopperProfileView.swift
//  CurateApp
//
//  Created by Melanie Ballard on 8/4/24.
//

import SwiftUI

struct ShopperProfileView: View {
    
    @Environment(\.dismiss) var dismiss

    let shopper : Shopper
    
    init(shopper: Shopper){
        self.shopper = shopper
    }
    
    var body: some View {
        
        ScrollView(showsIndicators : false) {
            VStack(alignment: .leading, spacing: 2){
                Button(action: { dismiss() }) {
                    Image(systemName: "chevron.backward")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .tint(.purple)
                        .padding([.top, .bottom], 10)
                }
                VStack (alignment: .leading){
                    HStack (alignment: .center){
                        Image(shopper.shopperImageURL)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100)
                            .clipShape(Circle())
                        VStack (alignment: .leading, spacing: 5){
                            Text(shopper.shopperName)
                                .font(.title2)
                            HStack(spacing: 3){
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 15, height: 15)
                                    .foregroundColor(.purple)
                                Text(String(format: "%.2f", shopper.rating))
                                    .font(.subheadline)
                                Text("(\(shopper.reviews))")
                                    .font(.caption)
                                    .foregroundColor(.purple)
                            } //end HStack
                        } //end VStack
                    } //end HStack
                    Text(shopper.shopperBio)
                        .padding([.leading, .trailing])
                    
                    
                    HStack(alignment: .center){
                        ContactButtonView()
                        LikeShopperButtonView()
                    }
                    .padding(.leading)
                }//end VStack
                
                VStack(spacing: 0){
                    
                    ShopperInfoView(shopper: shopper)
                    
                    ShopperStyleHistoryView(shopper: shopper)
                        .frame(height: 525)
                }//end VStack
                
            } //end VStack
            .padding([.leading, .trailing], 10)
        } //end ScrollView
    }
}

#Preview {
    ShopperProfileView(shopper: DeveloperPreview.shared.shoppers[0])
}
