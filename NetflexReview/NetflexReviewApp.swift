//
//  NetflexReviewApp.swift
//  NetflexReview
//
//  Created by DK on 2022/02/01.
//

import SwiftUI

@main
struct NetflexReviewApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
