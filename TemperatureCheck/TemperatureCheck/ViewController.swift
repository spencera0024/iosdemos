//
//  ViewController.swift
//  TemperatureCheck
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

    @IBAction func submitBtnClicked(_ sender: Any) {
        
        //Read the entered temperature
        var ip = Int(inputOL.text!)
        
        //Check if the temperature is above 60 and then print if it is hot or cold
        if(ip! >= 60) {
            outputOL.text = "It's hot!"
        }
        else {
            outputOL.text = "It's cold!"
        }
    }
    
}

