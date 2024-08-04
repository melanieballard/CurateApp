//
//  CurateApp.swift
//  Curate
//
//  Created by Melanie Ballard on 7/13/24.
//

import SwiftUI

@main
struct CurateApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
