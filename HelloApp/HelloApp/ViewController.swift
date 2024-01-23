//
//  ViewController.swift
//  HelloApp
//
//  Created by Spencer Anderson on 1/23/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputOL: UITextField!
    
    @IBOutlet weak var outputOL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitButtonClicked(_ sender: Any) {
        //Read the entered name
        var ip = inputOL.text!
        
        //String interpolate the name with "Hello,"
        
        //Assign it to the display or output label
        outputOL.text = "Hello, \(ip)"
    }
    
}

