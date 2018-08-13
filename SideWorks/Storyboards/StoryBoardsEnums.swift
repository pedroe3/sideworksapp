//
//  StoryBoardsEnums.swift
//  SideWorks
//
//  Created by Pedro Rivera on 8/13/18.
//  Copyright © 2018 sadcrow. All rights reserved.
//

import Foundation
import UIKit

enum StoryBoards: String {
    case main
    
    var board: UIStoryboard {
        return UIStoryboard(name: self.rawValue.capitalized, bundle: nil)
    }
}

enum VCIdentifiers: String {
    case main

    
    var txt: String {
        return self.rawValue
    }
    
}
