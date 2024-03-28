//
//  FavoritesView.swift
//  DeepLink
//
//  Created by 김건우 on 3/28/24.
//

import SwiftUI

struct FavoritesView: View {
    
    // MARK: - Wrapper Properties
    @EnvironmentObject var applicationData: ApplicationData
    
    // MARK: - Body
    var body: some View {
        NavigationStack(path: $applicationData.favoritesStack) {
            List {
                ForEach(FavoritesStack.allCases, id: \.rawValue) { item in
                    NavigationLink(value: item) {
                        Text(item.name)
                    }
                }
            }
            .navigationDestination(for: FavoritesStack.self) { item in
                Text(item.name)
            }
            .navigationTitle("Favorites")
        }
    }
    
}

#Preview {
    FavoritesView()
        .environmentObject(ApplicationData())
}
