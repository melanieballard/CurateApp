//
//  StyleCategoryView.swift
//  CurateApp
//
//  Created by Melanie Ballard on 8/5/24.
//

import SwiftUI

struct StyleCategoryView: View {
    
    
    let style: [priceRange]
    init(style: [priceRange]){
        self.style = style
    }
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack{
                ForEach(style, id: \.self) {style in
                    Button(action: {
                        
                    }, label: {
                        Text(style.title)
                            .font(.caption2)
                            .foregroundColor(.black)
                    })
                    .buttonStyle(.bordered)
                    .controlSize(.mini)
                    .tint(.gray)
                    .background(
                        Capsule()
                            .fill(Color.gray.opacity(0.2))
                    )
                    .clipShape(Capsule())
                }
            }
        }
    }
}

#Preview {
    StyleCategoryView(style: DeveloperPreview.shared.shoppers[0].priceRange)
}
