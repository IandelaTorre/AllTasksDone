//
//  AuthData.swift
//  AllTasksDone
//
//  Created by ian on 16/11/26.
//

import FirebaseAuth

struct AuthData {
    let uid: String
    let email: String?
    
    init(user: User) {
        self.uid = user.uid
        self.email = user.email
    }
    
    init(email: String) {
        uid = UUID().uuidString
        self.email = email
    }
}

extension AuthData {
    static var mock: Self {
        .init(email: "john.blitz@gmail.com")
    }
}
