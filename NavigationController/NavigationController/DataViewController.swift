//
//  DataViewController.swift
//  NavigationController
//
//  Created by octavianus on 09/08/18.
//  Copyright © 2018 octavianus. All rights reserved.
//

import UIKit

class DataViewController: UIViewController {

    @IBOutlet weak var usernameLabel:UILabel!
    @IBOutlet weak var passwordLabel:UILabel!
    @IBOutlet weak var fullnameLabel:UILabel!
    
    var username = ""
    var password = ""
    var fullname = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        usernameLabel.text = username
        passwordLabel.text = password
        fullnameLabel.text = fullname
        
    }
}
