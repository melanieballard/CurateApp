//
//  OutfitDetailView.swift
//  CurateApp
//
//  Created by Melanie Ballard on 8/5/24.
//

import SwiftUI

struct OutfitDetailView: View {
    
    @Environment (\.dismiss) var dismiss
    
    let outfit: StyleImages
    
    init(outfit: StyleImages){
        self.outfit = outfit
    }
    var body: some View {
        
        ScrollView(showsIndicators : false){
            VStack(alignment: .leading){
                Button(action: { dismiss() }) {
                    Image(systemName: "chevron.backward")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .tint(.purple)
                        .padding([.top, .bottom, .leading], 10)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            VStack(alignment: .center){
                Image(outfit.url)
                    .resizable()
                    .frame(width: 350, height: 450)
                    .scaledToFit()
                    .cornerRadius(8)
                    .shadow(radius: 5, x: 0, y: 3)
                HStack(alignment: .center){
                    Image(systemName: "text.bubble")
                    Spacer()
                    Text(outfit.title)
                        .font(.headline)
                    Spacer()
                    Image(systemName: "heart")
                        .foregroundColor(.red)
                } //end HStack
                .padding(.bottom, 10)
                
                VStack(alignment: .leading){
                    
                    Text("Outfit Details")
                        .font(.headline)
                    Text(outfit.description)
                        .font(.subheadline)
                    
                    HStack{
                        Text("Tags: ")
                            .font(.caption)
                        TagView(tags: outfit.tags)
                    }
                    HStack{
                        Text("Style: ")
                            .font(.caption)
                        StyleCategoryView(style: outfit.price)
                    }
                    
                } //end VStack
                
            } //end VStack
            .frame(width: 350)
        }
    }
}

#Preview {
    OutfitDetailView(outfit: DeveloperPreview.shared.shoppers[1].imageURLs[0])
}
