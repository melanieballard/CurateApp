//
//  ContactButtonView.swift
//  Curate
//
//  Created by Melanie Ballard on 7/14/24.
//

import SwiftUI

struct ContactButtonView: View {
    var body: some View {
        Button(action: {
            
        }) {
            Image(systemName: "bubble.left.and.text.bubble.right")
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
                .tint(.purple)
                .controlSize(.mini)
        }
    }
}

#Preview {
    ContactButtonView()
}
