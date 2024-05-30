//
//  HomeView.swift
//  Action
//
//  Created by 黃冠傑 on 2023/12/11.
//

import SwiftUI

struct ActivityListView: View {
    @State var description = ""
    @State var activities: [Activity] = [
        Activity(amSeqNo: "9999", activityId: "test9999", activityName: "TEST-9999", activityMaxNum: 99, activityStartTime: "2023-01-01 00:00:00", activityEndTime: "2023-01-01 00:00:00", creatTime: "2023-01-01 00:00:00", createUser: "Eason Chen", state: 1),
        Activity(amSeqNo: "9998", activityId: "test9998", activityName: "TEST-9998", activityMaxNum: 99, activityStartTime: "2023-01-01 00:00:00", activityEndTime: "2023-01-01 00:00:00", creatTime: "2023-01-01 00:00:00", createUser: "Eason Chen", state: 1),
        Activity(amSeqNo: "9997", activityId: "test9997", activityName: "TEST-9997", activityMaxNum: 99, activityStartTime: "2023-01-01 00:00:00", activityEndTime: "2023-01-01 00:00:00", creatTime: "2023-01-01 00:00:00", createUser: "Eason Chen", state: 1)
    ]
    
    var body: some View {
        NavigationStack {
            Text(self.description)
            List {
                ForEach(activities, id: \.self) { activity in
                    NavigationLink(
                        "\(activity.activityId ?? "")-\(activity.activityName ?? "")",
                        value: "\(String(describing: activity.activityId))-\(String(describing: activity.activityName))"
                    )
                    .navigationDestination(for: String.self) { textValue in
                        ActivityView(title: "\(activity.activityName ?? "N/A")")
                    }
                }
            }
        }
        .onAppear() {
            let url = URL(string: "https://localhost:8443/api/v1/getActivityList?userAccount=\(UserInfo.shared.account)")!
            var request = URLRequest(url: url)
            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
            request.httpMethod = "GET"
            
            let task = URLSession.shared.dataTask(with: request) { data, response, error in
                if let data = data, let activityWrapper = try? JSONDecoder().decode(ActivityWrapper.self, from: data), let activitiesRes = activityWrapper.activities {
                    self.activities = activitiesRes
                } else if let error = error {
                    self.description = "Failed to retrieve data"
                    print(error)
                }
            }
            
//            Activities you attend
            task.resume()
        }
    }
}

#Preview {
    ActivityListView()
}
