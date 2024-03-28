//
//  ApplicationData.swift
//  DeepLink
//
//  Created by 김건우 on 3/28/24.
//

import Foundation

final class ApplicationData: ObservableObject {
    
    @Published var selectedTab: TabItem = .home
    
    @Published var homeStack: [HomeStack] = []
    @Published var favoritesStack: [FavoritesStack] = []
    @Published var settingsStack: [SettingsStack] = []
    
}
