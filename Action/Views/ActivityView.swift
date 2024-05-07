//
//  ActivityView.swift
//  Action
//
//  Created by 黃冠傑 on 2023/11/20.
//

import SwiftUI

struct ActivityView: View {
    let title: String
    @State var actions: [Action] = [
        Action(id: "001", title: "action_01", detail: "test_01", timestamp: Date.now),
        Action(id: "002", title: "action_02", detail: "test_02", timestamp: Date.now),
        Action(id: "003", title: "action_03", detail: "test_03", timestamp: Date.now),
    ]
    
    var body: some View {
        List {
            ForEach(actions) { action in
                NavigationLink {
                    VStack {
                        Text("Title: \(action.title)")
                        Text("Description: \(action.detail)")
                        Text("Action added at \(action.timestamp, format: Date.FormatStyle(date: .numeric, time: .standard))")
                    }
                } label: {
                    VStack {
                        Text("Title: \(action.title)")
                        Text("Description: \(action.detail)")
                        Text("Action added at \(action.timestamp, format: Date.FormatStyle(date: .numeric, time: .standard))")
                    }
                }
            }
        }
    }
}

#Preview {
    ActivityView(title: "MyTestActivity")
}
