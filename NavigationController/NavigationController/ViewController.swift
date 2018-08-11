//
//  ViewController.swift
//  NavigationController
//
//  Created by octavianus on 09/08/18.
//  Copyright © 2018 octavianus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showDetailPressed(_ sender: Any) {
        performSegue(withIdentifier: "showDetailSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetailSegue"{
            
            let destination = segue.destination as! DetailViewController
            
            destination.receivedText = myTextField.text!
            
        }
    }
    

    @IBAction func showSettingPressed(_ sender: Any) {
        performSegue(withIdentifier: "showSettingSegue", sender: nil)
    }
    


}

