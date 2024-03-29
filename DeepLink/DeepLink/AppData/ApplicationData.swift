//
//  ApplicationData.swift
//  DeepLink
//
//  Created by 김건우 on 3/28/24.
//

import Foundation

final class ApplicationData: ObservableObject {
    
    @Published var selectedTab: TabItem = .home
    
    @Published var homePath: [HomeItem] = []
    @Published var favoritesPath: [FavoritesItem] = []
    @Published var settingsPath: [SettingsItem] = []
    
}
