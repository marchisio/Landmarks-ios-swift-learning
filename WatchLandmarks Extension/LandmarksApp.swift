//
//  LandmarksApp.swift
//  WatchLandmarks Extension
//
//  Created by lin sun on 12/24/20.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
