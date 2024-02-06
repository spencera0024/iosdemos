//
//  ViewController.swift
//  InitialsApp
//
//  Created by Spencer Anderson on 2/6/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstNameOL: UITextField!
    
    @IBOutlet weak var lastNameOL: UITextField!
    
    @IBOutlet weak var outputOL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnClicked(_ sender: Any) {
        var firstName = firstNameOL.text!
        var firstInitial = firstName[firstName.startIndex]
        
        var lastName = lastNameOL.text!
        var lastInitial = lastName[lastName.startIndex]
        
        outputOL.text = "\(firstInitial). \(lastInitial)."
    }
}

