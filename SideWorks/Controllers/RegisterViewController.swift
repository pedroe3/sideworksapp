//
//  RegisterViewController.swift
//  SideWorks
//
//  Created by Pedro Rivera on 8/21/18.
//  Copyright © 2018 sadcrow. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    
    var newUser = User()
    
    
    @IBOutlet weak var submitButton: UIButton! {
        didSet{
            submitButton.apply(ButtonStyle.standard, with: "Next")
        }
    }
    
    @IBOutlet weak var userNameTextField: UITextField! {
        didSet {
            userNameTextField.delegate = self
        }
    }
    
    @IBOutlet weak var firstNameTextField: UITextField! {
        didSet {
            firstNameTextField.delegate = self
        }
    }
    
    @IBOutlet weak var lastNameTextField: UITextField! {
        didSet {
            lastNameTextField.delegate = self
        }
    }
    
    @IBOutlet weak var emailTextField: UITextField! {
        didSet {
            emailTextField.delegate = self
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateNextButtonState("")
    }
    
    private func nextButtonPress(){  //change to ibaction
        
    }
    
    func updateNextButtonState(_ name: String){
        if(newUser.isValid){
            submitButton.isEnabled = newUser.isValid
            submitButton.backgroundColor = .terracotaUTAS
        } else {
            submitButton.isEnabled = newUser.isValid
            submitButton.backgroundColor = .gray
        }
    }
    
    private func assignValues(){
        newUser.UserName = self.userNameTextField.text
        newUser.FirstName = self.firstNameTextField.text
        newUser.LastName =  self.lastNameTextField.text
        newUser.Email =  self.emailTextField.text
        print(newUser)
    }
    
    
}

extension RegisterViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let currentText = textField.text ?? ""
        let expectedText = (currentText as NSString).replacingCharacters(in: range, with: string)
        self.assignValues()
        self.updateNextButtonState(expectedText)
        return true
    }
}
