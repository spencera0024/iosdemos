//
//  ViewController.swift
//  VowelTester
//
//  Created by Spencer Anderson on 1/25/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputOL: UITextField!
    
    @IBOutlet weak var outputOL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func checkBtnClicked(_ sender: Any) {
        //Read the entered text
        var input = inputOL.text!
        
        //Check for vowels using if statement
        if(input.contains("a") ||
           input.contains("e") ||
           input.contains("i") ||
           input.contains("o") ||
           input.contains("u")) {
            outputOL.text = "\(input) contains vowels"
        }
        else {
          //Print the message
            outputOL.text = "\(input) does not contain vowels"
        }
    }
}

