//
//  UserProfileView.swift
//  CurateApp
//
//  Created by Melanie Ballard on 8/7/24.
//

import SwiftUI

struct UserProfileView: View {
    
    @State private var navToSettings = false
    
    var body: some View {
        NavigationStack {
               Text("User Profile")
               .toolbar{
                   ToolbarItem(placement: .topBarTrailing){
                       Button{
                           navToSettings = true
                       } label: {
                           Image(systemName: "line.3.horizontal")
                       } // end button
                       
                   } // end toolbaritem
               } // end toolbar
               .padding(.horizontal)
               .fullScreenCover(isPresented: $navToSettings) {
                   UserSettingsView()
               }
           } // end navigationstack
       }
   }


#Preview {
    UserProfileView()
}
