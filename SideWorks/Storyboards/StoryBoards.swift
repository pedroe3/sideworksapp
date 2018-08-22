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
    
    static var registerVC: RegisterViewController {
        return main.vcOfType(.register) as! RegisterViewController
    }
    
    static var registerCellVC: RegisterCellsViewController {
        return main.vcOfType(.registercell) as! RegisterCellsViewController
    }
    
    static var logInVC: LogInViewController {
        return main.vcOfType(.login) as! LogInViewController
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
