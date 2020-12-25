//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by lin sun on 12/21/20.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        let mainWindow = WindowGroup {
            ContentView().environmentObject(modelData)
        }
        
        #if os(macOS)
        mainWindow.commands {
            LandmarkCommands()
        }
        #else
        mainWindow
        #endif
        
        #if os(watchOS)
        WKNotificationScene(controller: NotificationController.self, category: "LandmarkNear")
        #endif
    }
}
