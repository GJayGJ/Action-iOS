//
//  ContentView.swift
//  Action
//
//  Created by 黃冠傑 on 2023/11/20.
//

import SwiftUI

struct LoginView: View {
    @State private var account: String = ""
    @State private var password: String = ""
    
    @State private var isLoggedIn = false

    var body: some View {
        
        VStack {
            HStack {
                Text("Account: ")
                TextField("Please enter your account", text: $account)
            }
            HStack {
                Text("Password: ")
                SecureField("Please enter your password", text: $password)
            }
            Button("Log In") {
                // TODO: examine the result of gRPC
                loginPressed()
            }.fullScreenCover(isPresented: $isLoggedIn, content: {
                ActivityListView.init()
            })
        }
    }
    
    // TODO: gRPC
    /// Login Button Pressed
    private func loginPressed() {
        
        let result = ActionWrapperService.shared.login(account: account, password: password)
        
        print(result)
        
        
        // TODO: remaining logic
        
        isLoggedIn.toggle()
        UserInfo.shared.account = self.account
        UserInfo.shared.password = self.password
    }
}

#Preview {
    LoginView()
}
