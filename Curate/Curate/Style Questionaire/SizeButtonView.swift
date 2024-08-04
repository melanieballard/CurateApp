//
//  SizeButtonView.swift
//  Curate
//
//  Created by Melanie Ballard on 7/15/24.
//

import SwiftUI

struct SizeButtonView: View {
    
    @State private var selectedOptions: Set<String> = []
    @State var sizeOptions: Array<String>
    
    var body: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))], spacing: 10) {
            ForEach(sizeOptions, id: \.self) { option in
                Button(action: {
                    if selectedOptions.contains(option) {
                        selectedOptions.remove(option)
                    } else {
                        selectedOptions.insert(option)
                    }
                }) {
                    HStack {
                        Text(option)
                            .font(.caption)
                            .frame(maxWidth: .infinity)
                            .background(selectedOptions.contains(option) ? Color.purple : Color.white)
                            .foregroundColor(selectedOptions.contains(option) ? Color.white : Color.purple)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.purple)
                            )
                            .cornerRadius(10)
                    }
                }
                .buttonStyle(PlainButtonStyle())
                .tint(.purple)
            }
        }
    }
}

#Preview {
    SizeButtonView(sizeOptions: [" "])
}
