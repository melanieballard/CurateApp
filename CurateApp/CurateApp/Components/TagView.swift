//
//  TagView.swift
//  CurateApp
//
//  Created by Melanie Ballard on 8/4/24.
//

import SwiftUI

struct TagView: View {
    
    let tags: [tags]
    init(tags: [tags]){
        self.tags = tags
    }
    
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack{
                ForEach(tags, id: \.self) {tag in
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
    TagView(tags: [.preppy, .alternative])
}
