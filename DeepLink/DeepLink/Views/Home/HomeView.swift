//
//  HomeView.swift
//  DeepLink
//
//  Created by 김건우 on 3/28/24.
//

import SwiftUI

struct HomeView: View {
    
    // MARK: - Wrapper Properties
    @EnvironmentObject var applicationData: ApplicationData
    
    // MARK: - Body
    var body: some View {
        NavigationStack(path: $applicationData.homeStack) {
            List {
                ForEach(HomeStack.allCases, id: \.rawValue) { item in
                    NavigationLink(value: item) {
                        Text(item.name)
                    }
                }
            }
            .navigationDestination(for: HomeStack.self) { item in
                Text(item.name)
            }
            .navigationTitle("Home")
        }
    }
    
}

#Preview {
    HomeView()
        .environmentObject(ApplicationData())
}
