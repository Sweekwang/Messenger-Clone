//
//  Preference.swift
//  Messager
//
//  Created by Swee Kwang Chua on 16/7/22.
//

import Foundation

class Preference {
    static let shared = Preference()
    private let defaults = UserDefaults.standard
    
    // MARK: - Login State
    let isLoginKey = "isLogin"
    var isLogin: Bool {
        set {
            defaults.setValue(newValue, forKey: isLoginKey)
        }
        get {
            defaults.bool(forKey: isLoginKey)
        }
    }
}
