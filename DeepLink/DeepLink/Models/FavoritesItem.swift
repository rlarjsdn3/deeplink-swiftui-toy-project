//
//  FavoritesStack.swift
//  DeepLink
//
//  Created by 김건우 on 3/28/24.
//

import Foundation

enum FavoritesItem: String, CaseIterable {
    case iJustine
    case kaviya
    case jenna
    
    var name: String {
        switch self {
        case .iJustine:
            return "iJustine"
        case .kaviya:
            return "Kaviya"
        case .jenna:
            return "Janna"
        }
    }
}

extension FavoritesItem {
    static func convert(from string: String) -> Self? {
        return self.allCases.first { item in
            item.rawValue.lowercased() == string.lowercased()
        }
    }
}
