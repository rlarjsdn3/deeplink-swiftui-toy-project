//
//  SettingsStack.swift
//  DeepLink
//
//  Created by 김건우 on 3/28/24.
//

import Foundation

enum SettingsStack: String, CaseIterable {
    case myProfile
    case privacyPolicy
    
    var name: String {
        switch self {
        case .myProfile:
            return "My Profile"
        case .privacyPolicy:
            return "Privacy Policy"
        }
    }
}

extension SettingsStack {
    static func convert(from string: String) -> Self? {
        return self.allCases.first { item in
            item.rawValue.lowercased() == string.lowercased()
        }
    }
}
