//
//  ShopperProfileView.swift
//  Curate
//
//  Created by Melanie Ballard on 8/3/24.
//

import SwiftUI

struct ShopperProfileView: View {
    
    @Environment(\.dismiss) var dismiss

    let shopper : Shopper
    
    init(shopper: Shopper){
        self.shopper = shopper
    }
    
    var body: some View {
        
        ScrollView {
            ZStack(alignment: .topLeading){
                    Button(action: { dismiss() }) {
                        Image(systemName: "chevron.backward")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .tint(.purple)
                    }
                } //end ZStack
            VStack (alignment: .leading){
                HStack {
                    Image(shopper.shopperImageURL)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100)
                        .clipShape(Circle())
                    VStack (alignment: .leading, spacing: 5){
                        Text(shopper.shopperName)
                            .font(.title)
                        HStack(spacing: 3){
                            Image(systemName: "star.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                                .foregroundColor(.purple)
                            Text(String(format: "%.2f", shopper.rating))
                                .font(.subheadline)
                        } //end HStack
                    } //end VStack
                } //end HStack
                Text(shopper.shopperBio)
            } //end VStack
        } //end ScrollView
    }
}

#Preview {
    ShopperProfileView(shopper: DeveloperPreview.shared.shoppers[1])
}
