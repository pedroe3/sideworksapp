//
//  FileAccess.swift
//  SideWorks
//
//  Created by Pedro Rivera on 8/21/18.
//  Copyright © 2018 sadcrow. All rights reserved.
//


import Foundation
import UIKit

class FileAccess {
    let encoder = PropertyListEncoder()
    let userData = UserData.shared
    
    func saveToFile() {
        do {
            
            let data = try encoder.encode(userData.user)
            try data.write(to: dataFilePath())
        } catch {
            print("error")
        }
    }
    
    func loadFromFile() {
        let path = dataFilePath()
        if let data = try? Data(contentsOf: path)  {
            let decoder = PropertyListDecoder()
            do {
                var items = User()
                items = try decoder.decode(User.self, from: data)
                userData.updateUser(with: items)
                items.isSaved = true
            } catch {
                print("Error decoding item array!")
            }
        }
    }
}

extension FileAccess {
    
    func documentsDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
    
    func dataFilePath() -> URL {
        return documentsDirectory().appendingPathComponent("MySetting.plist")
    }
}
 

