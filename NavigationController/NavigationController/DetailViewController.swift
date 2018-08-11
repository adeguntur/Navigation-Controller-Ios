//
//  DetailViewController.swift
//  NavigationController
//
//  Created by octavianus on 09/08/18.
//  Copyright © 2018 octavianus. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var middleTitle: UILabel!
    var receivedText: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(receivedText)
        middleTitle.text = receivedText
        // Do any additional setup after loading the view.
    }
}
