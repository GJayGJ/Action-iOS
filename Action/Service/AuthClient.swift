//
//  AuthClient.swift
//  swiftGRPCTest
//
//  Created by 黃泓霖 on 2024/4/12.
//
import Foundation
import NIO
import GRPC
import SwiftProtobuf

class AuthClient {
    var authServiceClient: Action_ActionWrapperNIOClient?
    let port: Int = 50051
    init() {
      // build a fountain of EventLoops
      let eventLoopGroup = MultiThreadedEventLoopGroup(numberOfThreads: 1)
      do {
        // open a channel to the gPRC server
        let channel = try GRPCChannelPool.with(
          target: .host("localhost", port: self.port),
          transportSecurity: .plaintext,
          eventLoopGroup: eventLoopGroup
        )
        // create a Client
        self.authServiceClient = Action_ActionWrapperNIOClient(channel: channel)
        print("grpc connection initialized")
      } catch {
        print("Couldn’t connect to gRPC server")
      }
    }
    /**
     * Unary call example. Calls `login` and prints the response.
     * This method calls the authService.AuthServiceRoutes.login()
     * method and tries to understand the response.
     *
     * It sends a `AuthService_AccountCredentials` object, found in
     * authervice.pb.swift through the gRPC method and receives a
     * `AuthService_OauthCredentials` object back,
     * which it attempts to parse.
     */
    func login(username: String, password: String) -> String {
      print("Login: username=\(username)")
      // build the AccountCredentials object
      let accountCredentials: Action_User = .with {
        $0.userAccount = username
        $0.userPassword = password
      }
      // grab the login() method from the gRPC client
      let call = self.authServiceClient!.login(accountCredentials)
      // prepare an empty response object
      let oauthCredentials:  SwiftProtobuf.Google_Protobuf_StringValue
      // execute the gRPC call and grab the result
      do {
        oauthCredentials = try call.response.wait()
      } catch {
        print("RPC method ‘login’ failed: \(error)")
        // it would be better to throw an error here, but
        // let’s keep this simple for demo purposes
        return ""
      }
      // Do something interesting with the result
      print(oauthCredentials)
      // return a value so we can use it in the app
      return "Logged in!"
    }
  
}
