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
                // ⭐️ 외부로부터 URL을 전달받으면 실행됨
                .onOpenURL { url in
                    let urlString = url.absoluteString.replacingOccurrences(of: "deeplink://", with: "")
                    
                    let components = urlString.components(separatedBy: "?")
                    
                    for component in components {
                        let containsTab = component.contains("tab=")
                        let containsNav = component.contains("nav=")
                        
                        if containsTab {
                            let rawValue = component.replacingOccurrences(of: "tab=", with: "")
                            if let tab = TabItem.convert(from: rawValue) {
                                applicationData.selectedTab = tab
                            }
                        }
                        
                        if containsNav && urlString.contains("tab=") {
                            let rawValue = component
                                .replacingOccurrences(of: "_", with: "")
                                .replacingOccurrences(of: "nav=", with: "")
                            
                            navigateView(with: rawValue)
                        }
                    }
                }
                .environmentObject(applicationData)
        }
    }
}

extension DeepLinkApp {
    private func navigateView(with rawValue: String) {
        switch applicationData.selectedTab {
        case .home:
            if let path = HomeItem.convert(from: rawValue) {
                applicationData.homePath.append(path)
            }
        case .favorites:
            if let path = FavoritesItem.convert(from: rawValue) {
                applicationData.favoritesPath.append(path)
            }
        case .settings:
            if let path = SettingsItem.convert(from: rawValue) {
                applicationData.settingsPath.append(path)
            }
        }
    }
}
