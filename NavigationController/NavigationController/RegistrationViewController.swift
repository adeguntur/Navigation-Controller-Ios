//
//  RegistrationViewController.swift
//  NavigationController
//
//  Created by octavianus on 09/08/18.
//  Copyright © 2018 octavianus. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var fullnameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        usernameTextField.delegate = self
        fullnameTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField == usernameTextField{
            fullnameTextField.becomeFirstResponder()
        }else
        if textField == fullnameTextField{
            passwordTextField.becomeFirstResponder()
        }else
        if textField == passwordTextField{
            handleSave()
        }
        
        
        return true
    }
    
    @IBAction func handleSave(){
        performSegue(withIdentifier: "showDataSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDataSegue"{
            let destination = segue.destination as! DataViewController
            
            destination.username = usernameTextField.text!
            destination.fullname = fullnameTextField.text!
            destination.password = passwordTextField.text!
            
        }
    }
    

}
