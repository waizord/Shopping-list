//
//  Shopping_listApp.swift
//  Shopping list
//
//  Created by Ivan on 10/16/20.
//

import SwiftUI

@main
struct Shopping_listApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
