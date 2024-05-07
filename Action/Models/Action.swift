//
//  Item.swift
//  Action
//
//  Created by 黃冠傑 on 2023/11/20.
//

import Foundation

struct Action: Identifiable {
    var id: String
    var title: String
    var detail: String
    var timestamp: Date
    
    init(id: String, title: String, detail: String, timestamp: Date) {
        self.id = id
        self.title = title
        self.detail = detail
        self.timestamp = timestamp
    }
}
