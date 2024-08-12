//
//  FeaturedShopperView.swift
//  CurateApp
//
//  Created by Melanie Ballard on 8/4/24.
//

import SwiftUI

struct FeaturedShopperView: View {
    
    let shopper: Shopper
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text("\(shopper.shopperName)")
                    .font(.title3)
                    .fontWeight(.semibold)
                HStack(spacing: 3){
                    Image(systemName: "star.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 10, height: 10)
                        .foregroundColor(.purple)
                    Text(String(format: "%.2f", shopper.rating))
                        .font(.caption)
                } //end embedded HStack
            } //end Hstack
            
            TagView(tags: shopper.tags)
                                    
            Text("Style History")
                .padding(.top, 4)
                .font(.caption)
                .fontWeight(.semibold)

            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 1) {
                    ForEach(shopper.imageURLs, id: \.self) {imageName in
                        Image(imageName.url)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                            .cornerRadius(8)
                            .shadow(radius: 5, x: 0, y: 3)
                    } //end ForEach
                } //end HStack
            } //end ScrollView
            .transition(.slide)
       } //end VStack
       .padding(16)
       .background(.white)
       .cornerRadius(10)
       .shadow(radius: 5, x: 0, y: 3)
       .padding()
        
   } //end view
} //end struct

#Preview {
    FeaturedShopperView(shopper: DeveloperPreview.shared.shoppers[1])
}
