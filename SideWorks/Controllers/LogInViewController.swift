//
//  LogInViewController.swift
//  SideWorks
//
//  Created by Pedro Rivera on 8/22/18.
//  Copyright © 2018 sadcrow. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var logInButton: UIButton!  {
        didSet{
            logInButton.apply(ButtonStyle.standard, with: "Log In")
        }
    }
    
    var userData = UserData.shared
    let queryService = QueryService()
    var file = FileAccess()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onLogInButtonPress(_ sender: UIButton) {
        userData.user.UserName = userNameTextField.text
        userData.user.Password = passwordTextField.text
        self.loadDataFromApi()
    }
    
    
    private func loadDataFromApi() {
        print(userData.user.UserName!)
        print(userData.user.Password!)
        queryService.loginService { [weak self](_, _) in
            print(self?.userData.user.FirstName ?? "NAME HERE!!!")
            self?.file.saveToFile()
        }
        
       
      
        
        
    }
    
 
    
    
}
