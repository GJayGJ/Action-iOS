//
//  HomeView.swift
//  Action
//
//  Created by 黃冠傑 on 2023/12/11.
//

import SwiftUI

struct ActivityListView: View {
    @State var activities: [Activity] = [
        Activity(id: "001", name: "TEST99", maxNum: 11, startTime: Date.now),
        Activity(id: "002", name: "TEST2", maxNum: 12, startTime: Date.now),
        Activity(id: "003", name: "TEST3", maxNum: 13, startTime: Date.now),
        Activity(id: "004", name: "TEST4", maxNum: 14, startTime: Date.now),
        Activity(id: "005", name: "TEST5", maxNum: 15, startTime: Date.now),
    ]
    
    var body: some View {
        NavigationStack {
            Text("Activities You Participate In")
            List {
                ForEach(activities) { activity in
                    NavigationLink(
                        "\(activity.id ?? "")-\(activity.name ?? "")",
                        value: "\(String(describing: activity.id))-\(String(describing: activity.name))"
                    )
                    .navigationDestination(for: String.self) { textValue in
                        ActivityView(title: "\(activity.name ?? "N/A")")
                    }
                }
            }
        }
    }
}

#Preview {
    ActivityListView()
}
