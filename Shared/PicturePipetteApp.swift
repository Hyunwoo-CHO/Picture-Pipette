//
//  PicturePipetteApp.swift
//  Shared
//
//  Created by hyun woo cho on 2022/05/02.
//

import SwiftUI

@main
struct PicturePipetteApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
