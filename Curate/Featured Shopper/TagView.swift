//
//  TagView.swift
//  Curate
//
//  Created by Melanie Ballard on 7/14/24.
//

import SwiftUI

struct TagView: View {
    var body: some View {
        Button(action: {
            
        }, label: {
            Text("Tag")
                .font(.caption2)
                .foregroundColor(.black)
            })
        .buttonBorderShape(.capsule)
        .tint(.purple)
        .buttonStyle(.bordered)
        .controlSize(.mini)
        }
    }


#Preview {
    TagView()
}
