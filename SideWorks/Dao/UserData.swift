//
//  UserData.swift
//  SideWorks
//
//  Created by Pedro Rivera on 8/22/18.
//  Copyright © 2018 sadcrow. All rights reserved.
//

final class UserData {
    static let shared = UserData()
    private init() {}
    private var userInformation = User()
}

// MAKR: - Public getters
extension UserData { //getter to access the data,   //protec from manipulation as a struc
    var user: User {
        return userInformation
    }
}

// MARK: - Mutationg functions
extension UserData {
    func updateUser(with user: User?){
        guard let response = user else { return }
        self.userInformation = response
    }
}
