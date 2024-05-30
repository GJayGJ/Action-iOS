//
//  UserInfo.swift
//  Action
//
//  Created by 黃冠傑 on 2024/1/17.
//

import Foundation

class UserInfo {
    static let shared: UserInfo = UserInfo()
    
    var userName: String = ""
    var account: String = ""
    var password: String = ""
}
