//
//  Activity.swift
//  Action
//
//  Created by 黃冠傑 on 2023/12/27.
//

import Foundation

struct Activity: Hashable, Codable {
    var amSeqNo: String?
    var activityId: String?
    var activityName: String?
    var activityMaxNum: Int?
    var activityStartTime: String?
    var activityEndTime: String?
    var creatTime: String?
    var createUser: String?
    var state: Int?
    
    init(amSeqNo: String? = nil, activityId: String? = nil, activityName: String? = nil, activityMaxNum: Int? = nil, activityStartTime: String? = nil, activityEndTime: String? = nil, creatTime: String? = nil, createUser: String? = nil, state: Int? = nil) {
        self.amSeqNo = amSeqNo
        self.activityId = activityId
        self.activityName = activityName
        self.activityMaxNum = activityMaxNum
        self.activityStartTime = activityStartTime
        self.activityEndTime = activityEndTime
        self.creatTime = creatTime
        self.createUser = createUser
        self.state = state
    }
    
    // Differentiating
    static func == (lhs: Activity, rhs: Activity) -> Bool {
        lhs.activityId == rhs.activityId
    }

    // Hashing
    func hash(into hasher: inout Hasher) {
        hasher.combine(activityId)
    }
}

// TODO: To be deleted when the spec of API is amended.
struct ActivityWrapper: Codable {
    var activities: [Activity]?
    var code: Int?
    var msg: String?
}
