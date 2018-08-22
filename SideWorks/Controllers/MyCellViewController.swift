//
//  MyCellViewController.swift
//  SideWorks
//
//  Created by Pedro Rivera on 8/21/18.
//  Copyright © 2018 sadcrow. All rights reserved.
//

import UIKit

class MyCellViewController: UIViewController {

    @IBOutlet weak var cellNameLabel: UILabel!
    
    @IBOutlet weak var percentGraphImage: UIImageView!
    
    var userData = UserData.shared
    var file = FileAccess()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        validateUser()
    }

    private func validateUser(){
        file.loadFromFile()
        if (self.userData.user.isSaved == false) {
            let loginVC = MainStoryBoard.logInVC
            navigationController?.pushViewController(loginVC, animated: true)
        }
    }
    
    private func checkConnection(){
        //check conection to vpn if not alert and give instruction.
    }

}
