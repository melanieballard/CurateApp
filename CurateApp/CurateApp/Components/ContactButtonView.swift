//
//  ContactButtonView.swift
//  CurateApp
//
//  Created by Melanie Ballard on 8/4/24.
//

import SwiftUI

struct ContactButtonView: View {
    var body: some View {
        Button(action: {
            
        }) {
            HStack{
                Text("Contact")
                    .font(.subheadline)
                    .foregroundColor(.black)
                Image(systemName: "bubble.left.and.text.bubble.right")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .tint(.black)
                    .controlSize(.mini)
            }
        }
        .frame(width: 125, height: 5)
        .padding()
        .background(
            Capsule()
                .fill(Color.purple.opacity(0.2))
            )
        .clipShape(Capsule())
    }
}

#Preview {
    ContactButtonView()
}
