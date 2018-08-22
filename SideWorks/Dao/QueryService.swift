//
//  QueryService.swift
//  SideWorks
//
//  Created by Pedro Rivera on 8/22/18.
//  Copyright © 2018 sadcrow. All rights reserved.
//

import Foundation
import Alamofire

enum APIResourceURL: String {
    case base
    
    static let loginURL = "http://172.22.176.165/api/mobile/login"
    
    var login: String {
        return APIResourceURL.loginURL
    }
}

class QueryService {
    typealias SuccessResult = (Bool, String) -> ()
    
    var errorMessage = ""
    let userData = UserData.shared
    
    var loginUrl: String {
        return APIResourceURL.base.login
    }
    
}


//post
extension QueryService {
    func loginService(completion: @escaping SuccessResult) {
        let parameters: Parameters = [
            "UserName" : userData.user.UserName!,
            "Password" : userData.user.Password!
        ]
        print(parameters)
        Alamofire.request(loginUrl, method: .post, parameters: parameters ).responseJSON { (response) in
            let didUpdateUserData = self.updateUserLoginResponse(response)
            completion(didUpdateUserData, self.errorMessage)
        }
    }
}

//get
extension QueryService {
    
}
//decode
extension QueryService {
    private func updateUserLoginResponse(_ response: DataResponse<Any>) -> Bool {
        guard let data = response.data else { return false }
        let decoder = JSONDecoder()
        
        do {
            let decodedUser = try decoder.decode(User.self, from: data)
            userData.updateUser(with: decodedUser)
            return true
        } catch let error {
            errorMessage = error.localizedDescription
            print(errorMessage)
            return false
        }
    }
}

/*
 func fetchData(completion: @escaping SuccessResult) {
     Alamofire.request(url, headers: self.headers).responseJSON { (response) in
         let didUpdateMeasurePointData = self.updateMeasurePointResult(response)
         completion(didUpdateMeasurePointData, self.errorMessage)
     }
 }
 
 
class QueryService {
    
    typealias SuccessResult = (Bool, String) -> ()
    
    let appData = AppData.shared
    let detailData = DetailData.shared
    
    var errorMessage = ""
    
    var url: String {
        return APIResourceURL.base.url
    }
    
    let headers: HTTPHeaders = [
        "X-App-Token": "d37dWkcYcV89V3RnCjITOlNLH",
        "Accept": "application/json"
    ]
}

extension QueryService {
    func fetchData(completion: @escaping SuccessResult) {
        Alamofire.request(url, headers: self.headers).responseJSON { (response) in
            let didUpdateMeasurePointData = self.updateMeasurePointResult(response)
            completion(didUpdateMeasurePointData, self.errorMessage)
        }
    }
    
    func fetchDetailData(site: String, completion: @escaping SuccessResult) {
        let detailURL = "https://waterservices.usgs.gov/nwis/iv/?sites=\(site)&period=P1D&format=json"
        Alamofire.request(detailURL).responseJSON { (response) in
            let didUpdateMeasure = self.updateMeasurePointDetailResult(response)
            completion(didUpdateMeasure, self.errorMessage)
        }
    }
}

extension QueryService {
    
    private func updateMeasurePointResult(_ response: DataResponse<Any>) -> Bool {
        guard let data = response.data else { return false }
        let decoder = JSONDecoder()
        
        do {
            let decodedMeasurePoints = try decoder.decode([MeasurePoint].self, from: data)
            appData.updateMeasurePointList(with: decodedMeasurePoints)
            return true
        } catch let error {
            errorMessage = error.localizedDescription
            print(errorMessage)
            return false
        }
    }
    
    private func updateMeasurePointDetailResult(_ response: DataResponse<Any>) -> Bool {
        guard let data = response.data else { return false }
        let decoder = JSONDecoder()
        
        do {
            let decodedMeasurePointsDetail = try decoder.decode(RootObject.self, from: data)
            detailData.updateMeasurePointList(with: decodedMeasurePointsDetail)
            return true
        } catch let error {
            errorMessage = error.localizedDescription
            print(errorMessage)
            return false
        }
    }
}
 
 */
