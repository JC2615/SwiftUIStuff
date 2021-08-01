//
//  SwiftUIIntroApp.swift
//  SwiftUIIntroWatch WatchKit Extension
//
//  Created by HBCU-c2-14 on 8/1/21.
//

import SwiftUI

@main
struct SwiftUIIntroApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
