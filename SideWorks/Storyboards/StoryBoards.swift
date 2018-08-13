//
//  StoryBoards.swift
//  SideWorks
//
//  Created by Pedro Rivera on 8/13/18.
//  Copyright © 2018 sadcrow. All rights reserved.
//

import Foundation
import UIKit

struct MainStoryBoard {
    
    static var main: UIStoryboard {
        return StoryBoards.main.board
    }
    
    static var mainVC: mainViewController {
        return main.vcOfType(.main) as! mainViewController
    }
    
    /*
    static var playerNameEntryVC: PlayerNameEntryViewController {
        return main.vcOfType(.playerName) as! PlayerNameEntryViewController
    }
    
    static var scoreSelectionVC: ScoreSelectionViewController {
        return main.vcOfType(.scoreSelection) as! ScoreSelectionViewController
    }
    
    static var prizeSelectionVC: PrizeSelectionViewController {
        return main.vcOfType(.prizeSelection) as! PrizeSelectionViewController
    }
    
    static var gameVC: GameViewController {
        return main.vcOfType(.gameView) as! GameViewController
    }
 
 */
}
