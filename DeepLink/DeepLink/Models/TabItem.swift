//
//  TabItem.swift
//  DeepLink
//
//  Created by 김건우 on 3/28/24.
//

import Foundation

enum TabItem: String, CaseIterable {
    case home
    case favorites
    case settings
    
    var name: String {
        switch self {
        case .home:
            return "Home"
        case .favorites:
            return "Favorites"
        case .settings:
            return "Settings"
        }
    }
    
    var systemImage: String {
        switch self {
        case .home:
            return "house.fill"
        case .favorites:
            return "heart.fill"
        case .settings:
            return "gear"
        }
    }
}

extension TabItem {
    static func convert(from string: String) -> Self? {
        return self.allCases.first { item in
            item.rawValue.lowercased() == string.lowercased()
        }
    }
}
