//
//  LikeShopperButtonView.swift
//  CurateApp
//
//  Created by Melanie Ballard on 8/4/24.
//

import SwiftUI

struct LikeShopperButtonView: View {
    
    @State private var isLiked = false
    
    var body: some View {
        
        Button(action: {
            isLiked.toggle()
        }) {
            HStack{
                Text(isLiked ? "Liked" : "Like")
                    .font(.subheadline)
                    .foregroundColor(.black)
                Image(systemName: isLiked ? "heart.fill" : "heart")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .tint(.black)
                    .controlSize(.mini)
            }
        }
        .frame(width: 130, height: 5)
        .padding()
        .background(
            Capsule()
                .fill(isLiked ? Color.red.opacity(0.2) : Color.gray.opacity(0.2))
            )
        .clipShape(Capsule())
    }
}

#Preview {
    LikeShopperButtonView()
}
