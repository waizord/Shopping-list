//
//  Shopping_listApp.swift
//  Shopping list
//
//  Created by Ivan on 10/16/20.
//

import SwiftUI
import Firebase

@main
struct Shopping_listApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        //Проверка подключения Firebase
        print("Setting firebase")
        FirebaseApp.configure()
        return true
    }
}
