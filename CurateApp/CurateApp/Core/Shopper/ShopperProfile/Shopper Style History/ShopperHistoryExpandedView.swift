//
//  ShopperHistoryExpandedView.swift
//  CurateApp
//
//  Created by Melanie Ballard on 8/4/24.
//

import SwiftUI

struct ShopperHistoryExpandedView: View {
    
    @Environment (\.dismiss) var dismiss
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
        
        NavigationStack{
            ScrollView{
                VStack(alignment: .leading){
                    Button(action: { dismiss() }) {
                        Image(systemName: "chevron.backward")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .tint(.purple)
                            .padding([.top, .bottom], 10)
                    }
                    Text("\(shopper.shopperUsername)'s Style History")
                        .font(.title)
                        .foregroundColor(.black)
                    LazyVGrid(columns: columns, spacing: 20){
                        ForEach(shopper.imageURLs, id: \.self) {imageName in
                            VStack(alignment: .leading){
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
                                HStack{
                                    Text(imageName.title)
                                        .font(.caption)
                                    Image(systemName: "heart")
                                        .foregroundColor(.red)
                                }
                                .foregroundColor(.black)
                                .frame(width: 200)
                            }
                        }
                    }
                }
            }
        }
        .padding(15)
        .fullScreenCover(item: $selectedOutfit) { outfit in
            OutfitDetailView(outfit: outfit)
        }
    }
}
#Preview {
    ShopperHistoryExpandedView(shopper: DeveloperPreview.shared.shoppers[1])
}
