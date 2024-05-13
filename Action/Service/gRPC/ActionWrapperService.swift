//
//  ActionWrapperService.swift
//  Action
//
//  Created by 黃冠傑 on 2024/5/13.
//

import Foundation
import NIO
import GRPC
import SwiftProtobuf

class ActionWrapperService {
    static let shared = ActionWrapperService()
    
    var actionWrapperNIOClient: Action_ActionWrapperNIOClient?
    // TODO: Add xcconfig for parametric design
    let port: Int = 50051
    
    init() {
        let eventLoopGroup = MultiThreadedEventLoopGroup(numberOfThreads: 1)
        do {
            let channel = try GRPCChannelPool.with(
                target: .host("localhost", port: self.port),
                transportSecurity: .plaintext,
                eventLoopGroup: eventLoopGroup
            )
            self.actionWrapperNIOClient = Action_ActionWrapperNIOClient(channel: channel)
            print("gRPC connection for ActionWrapper Service is initialized.")
        } catch {
            print("gRPC connection for ActionWrapper Service is failed.")
            print("Error: \(error)")
        }
    }
    
    func login(account: String, password: String) -> String {
        let account_user: Action_User = .with {
            $0.userAccount = account
            $0.userPassword = password
        }
        
        guard let actionWrapperNIOClient = actionWrapperNIOClient else {
            // TODO: add error messages in GlobalConstants
            return "Connection Error"
        }
        
        let unaryCall = actionWrapperNIOClient.login(account_user)
        let loginResult: SwiftProtobuf.Google_Protobuf_StringValue
        do {
            loginResult = try unaryCall.response.wait()
        } catch {
            print("gRPC method ‘login’ failed: \(error)")
            return ""
        }
        print(loginResult)
        return loginResult.value
    }
}
