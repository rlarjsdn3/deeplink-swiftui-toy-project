//
//  HomeStack.swift
//  DeepLink
//
//  Created by 김건우 on 3/28/24.
//

import Foundation

enum HomeStack: String, CaseIterable {
    case myPosts
    case oldPosts
    case latestPosts
    case deletedPosts
    
    var name: String {
        switch self {
        case .myPosts:
            return "My Posts"
        case .oldPosts:
            return "Old Posts"
        case .latestPosts:
            return "Latest Posts"
        case .deletedPosts:
            return "Deleted Posts"
        }
    }
}

extension HomeStack {
    static func convert(from string: String) -> Self? {
        return self.allCases.first { item in
            item.rawValue.lowercased() == string.lowercased()
        }
    }
}
