//
//  FeaturedShopperView.swift
//  Curate
//
//  Created by Melanie Ballard on 7/14/24.
//

import SwiftUI

struct FeaturedShopperView: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text("Name")
                    .font(.title3)
                    .fontWeight(.semibold)
                ContactButtonView()
            } //end Hstack
            
            withAnimation(.snappy){
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 8) {
                        TagView()
                        TagView()
                        TagView()
                    } //end HStack
                } //end ScrollView
            } //end animation
                                    
            Text("Style History")
                .padding(.top, 4)
                .font(.caption)
                .fontWeight(.semibold)

            withAnimation(.snappy){
                ScrollView(.horizontal, showsIndicators: false){
                    
                    HStack(spacing: 16) {
                        ForEach(1...3, id: \.self) { index in
                            Image("test-image-\(index)")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 100)
                                .cornerRadius(8)
                                .shadow(radius: 5, x: 0, y: 3)
                        }
                    } //end HStack
                } //end ScrollView
            } //end animation
       } //end VStack
       .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
       .background(Color.white)
       .cornerRadius(10)
       .shadow(radius: 5, x: 0, y: 3)
       .padding()
        
   } //end view
} //end struct

#Preview {
    FeaturedShopperView()
}
