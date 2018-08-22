//
//  UserModel.swift
//  SideWorks
//
//  Created by Pedro Rivera on 8/21/18.
//  Copyright © 2018 sadcrow. All rights reserved.
//

import Foundation

class User: Codable {
    
    var UserName: String? = ""
    var FirstName: String? = ""
    var LastName: String? = ""
    var Position: String? = ""
    var Email: String? = ""
    var UserId: Int = 0
    var Password: String? = ""
    
    var Cells: [Cell]?
    
    var isSaved: Bool = false
    
    var isValid: Bool {
        return FirstName != "" && LastName != "" && UserName != "" && Email != ""
    }
    
    enum CodingKeys: String, CodingKey {
        case UserName = "USER_NAME"
        case FirstName = "FIRST_NAME"
        case LastName = "LAST_NAME"
        //case Position = "POSITION_ID"
        case Email = "EMAIL"
        case UserId = "ID"
    }
}
