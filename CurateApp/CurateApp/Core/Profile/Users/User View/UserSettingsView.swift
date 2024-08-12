//
//  UserSettingsView.swift
//  CurateApp
//
//  Created by Melanie Ballard on 8/9/24.
//

import SwiftUI

struct UserSettingsView: View {
    
    @Environment (\.dismiss) var dismiss
    
    var body: some View {
        
        NavigationStack{
            
            VStack(alignment: .leading){
                
                Button(action: { dismiss() }) {
                    Image(systemName: "chevron.backward")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .tint(.purple)
                        .padding([.top, .bottom], 10)
                }
                
                List{
                    
                    Button{
                        //edit profile
                    } label: {
                        HStack{
                            Text("Edit Profile")
                                .foregroundStyle(.black)
                                .font(.system(size: 20, design: .rounded))
                        } 
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .contentShape(Rectangle())
                    } // end button
                    .buttonStyle(.borderless)
                    .listRowInsets(EdgeInsets())
                    .padding([.top, .bottom])
                    
                    Button{
                        AuthService.shared.signOut()
                    } label: {
                        HStack{
                            Text("Log Out")
                                .foregroundStyle(.purple)
                                .font(.system(size: 20, design: .rounded))
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .contentShape(Rectangle())
                    } // end button
                    .buttonStyle(.borderless)
                    .listRowInsets(EdgeInsets())
                    .padding([.top, .bottom])
                }
                .listStyle(.plain)
            }
            .background(.white)
            .padding()
        }
    }
}

#Preview {
    UserSettingsView()
}
