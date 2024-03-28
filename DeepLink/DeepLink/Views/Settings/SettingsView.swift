//
//  SettingsView.swift
//  DeepLink
//
//  Created by 김건우 on 3/28/24.
//

import SwiftUI

struct SettingsView: View {
    
    // MARK: - Wrapper Properties
    @EnvironmentObject var applicationData: ApplicationData
    
    // MARK: - Body
    var body: some View {
        NavigationStack(path: $applicationData.settingsStack) {
            List {
                ForEach(SettingsStack.allCases, id: \.rawValue) { item in
                    NavigationLink(value: item) {
                        Text(item.name)
                    }
                }
            }
            .navigationDestination(for: SettingsStack.self) { item in
                Text(item.name)
            }
            .navigationTitle("Settings")
        }
    }
    
}

#Preview {
    SettingsView()
        .environmentObject(ApplicationData())
}
