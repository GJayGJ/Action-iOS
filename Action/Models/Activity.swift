//
//  Activity.swift
//  Action
//
//  Created by 黃冠傑 on 2023/12/27.
//

import Foundation

struct Activity: Identifiable {
    var id: String?
    var name: String?
    var maxNum: Int?
    var startTime: Date?
    var endTime: Date?
    var createTime: Date?
    var createUser: String?
    var updateTime: Date?
    var updateUser: String?
    
    init(id: String? = nil, name: String? = nil, maxNum: Int? = nil, startTime: Date? = nil, endTime: Date? = nil, createTime: Date? = nil, createUser: String? = nil, updateTime: Date? = nil, updateUser: String? = nil) {
        self.id = id
        self.name = name
        self.maxNum = maxNum
        self.startTime = startTime
        self.endTime = endTime
        self.createTime = createTime
        self.createUser = createUser
        self.updateTime = updateTime
        self.updateUser = updateUser
    }
}
