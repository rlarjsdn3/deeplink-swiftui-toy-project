//
//  DeepLinkApp.swift
//  DeepLink
//
//  Created by 김건우 on 3/28/24.
//

import SwiftUI

@main
struct DeepLinkApp: App {
    
    // MARK: - Wrapper Properties
    @StateObject private var applicationData: ApplicationData = ApplicationData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(applicationData)
        }
    }
}
