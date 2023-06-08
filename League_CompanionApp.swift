//
//  League_CompanionApp.swift
//  League Companion
//
//  Created by Yaniv Naggar on 5/23/23.
//

import SwiftUI

@main
struct League_CompanionApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
