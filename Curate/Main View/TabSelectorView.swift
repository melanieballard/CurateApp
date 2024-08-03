//
//  TabSelectorView.swift
//  Curate
//
//  Created by Melanie Ballard on 7/14/24.
//

import SwiftUI

struct TabSelectorView: View {
    @State private var selectedTab = 0
    @State private var initiateShopView = false
    
    var body: some View {
        TabView(selection: $selectedTab) {
            MainpageView()
                .tabItem {
                    Image(systemName: selectedTab == 0 ? "house.fill" : "house")
                }
                .tag(0)
                .onAppear { selectedTab = 0 }
            
            ChatView()
                .tabItem {
                    Image(systemName: "envelope")
                }
                .tag(1)
            
            Text("")
                .tabItem {
                    Image(systemName: "cart.circle")
                }
                .tag(2)
            
            LikedView()
                .tabItem {
                    Image(systemName: selectedTab == 3 ? "heart.fill" : "heart")
                }
                .tag(3)
                .onAppear { selectedTab = 3 }
            
            ProfileView()
                .tabItem {
                    Image(systemName: selectedTab == 4 ? "person.fill" : "person")
                }
                .tag(4)
        }.onChange(of: selectedTab, perform: { newValue in
            initiateShopView = selectedTab == 2
        })
        .fullScreenCover(isPresented: $initiateShopView, onDismiss: {
            selectedTab = 0
        }, content: {
            QuestionaireView()
        })
        .tint(.purple)
    }
}


#Preview {
    TabSelectorView()
}
