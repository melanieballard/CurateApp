//
//  TagView.swift
//  Curate
//
//  Created by Melanie Ballard on 7/14/24.
//

import SwiftUI

struct TagView: View {
    
    let shopper: Shopper
    init(shopper: Shopper){
        self.shopper = shopper
    }
    
    var body: some View {
        
        withAnimation(.snappy){
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(){
                    ForEach(shopper.tags) {tag in
                            Button(action: {
                                
                            }, label: {
                                Text(tag.title)
                                    .font(.caption2)
                                    .foregroundColor(.black)
                            })
                            .buttonBorderShape(.capsule)
                            .tint(.purple)
                            .buttonStyle(.bordered)
                            .controlSize(.mini)
                        }
                    }
                }
            } //end ForEach
       
    /*Button(action: {
            
        }, label: {
            Text("\(shopper.tags[0].title)")
                .font(.caption2)
                .foregroundColor(.black)
            })
        .buttonBorderShape(.capsule)
        .tint(.purple)
        .buttonStyle(.bordered)
        .controlSize(.mini)
        }
     */
        
    } //end View
} //end struct

#Preview {
    TagView(shopper: DeveloperPreview.shared.shoppers[0])
}
