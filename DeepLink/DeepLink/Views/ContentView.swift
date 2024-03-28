//
//  ContentView.swift
//  DeepLink
//
//  Created by 김건우 on 3/28/24.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Wrapper Properties
    @EnvironmentObject var applicationData: ApplicationData
    
    // MARK: - Body
    var body: some View {
        TabView(selection: $applicationData.selectedTab) {
            HomeView()
                .tabItem {
                    Image(systemName: TabItem.home.systemImage)
                    Text(TabItem.home.name)
                }
                .tag(TabItem.home)
            
            FavoritesView()
                .tabItem {
                    Image(systemName: TabItem.favorites.systemImage)
                    Text(TabItem.favorites.name)
                }
                .tag(TabItem.favorites)
            
            SettingsView()
                .tabItem {
                    Image(systemName: TabItem.settings.systemImage)
                    Text(TabItem.settings.name)
                }
        }
        .tint(Color.red)
    }
}

#Preview {
    ContentView()
        .environmentObject(ApplicationData())
}
