//
//  ShopperStyleHistoryView.swift
//  CurateApp
//
//  Created by Melanie Ballard on 8/4/24.
//

import SwiftUI

struct ShopperStyleHistoryView: View {
    
    @State private var navToHistory = false
    @State private var selectedOutfit: StyleImages?
    
    let shopper : Shopper
    
    init(shopper: Shopper){
        self.shopper = shopper
    }
    
    let columns = [
            GridItem(.flexible()),
            GridItem(.flexible())
        ]
    
    var body: some View {
        
        NavigationView{
            VStack(alignment: .leading){
                HStack(alignment: .center){
                    Text("\(shopper.shopperUsername)'s Style History")
                        .font(.headline)
                        .foregroundColor(.black)
                    Spacer()
                    Button(action: {
                        navToHistory = true
                    }) {
                        Image(systemName: "chevron.forward")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.purple)
                    }
                } //end Hstack
                .padding(.bottom, 10)
                    LazyVGrid(columns: columns, spacing: 20){
                        ForEach(shopper.imageURLs.prefix(4), id: \.self) {imageName in
                            Button(action: {
                                selectedOutfit = imageName
                            }) {
                                Image(imageName.url)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 200, height: 200)
                                    .cornerRadius(8)
                                    .shadow(radius: 5, x: 0, y: 3)
                            }
                        }
                    }
            } //end Vstack
            .padding()
            .background(.white)
            .cornerRadius(10)
            .shadow(radius: 5, x: 0, y: 3)
            .padding()
            .fullScreenCover(isPresented: $navToHistory) {
                ShopperHistoryExpandedView(shopper: shopper)
            }
            .fullScreenCover(item: $selectedOutfit) { outfit in
                OutfitDetailView(outfit: outfit)
            }
        } //end navView
    }
}

#Preview {
    ShopperStyleHistoryView(shopper: DeveloperPreview.shared.shoppers[1])
}
