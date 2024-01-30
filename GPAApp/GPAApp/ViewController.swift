//
//  ViewController.swift
//  GPAApp
//
//  Created by Spencer Anderson on 1/30/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputOL: UITextField!
    
    @IBOutlet weak var outputOL: UILabel!
    
    @IBOutlet weak var imageOL: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func BtnClicked(_ sender: Any) {
        //Read the input GPA.
        var gpa = Double(inputOL.text!)
        
        if(gpa! > 3.0) {
            outputOL.text = "Good GPA!"
            imageOL.image = UIImage(named: "aplus.jpg")
        }
        else {
            outputOL.text = "Bad GPA!"
            imageOL.image = UIImage(named: "failinggrade.jpg")
        }
    }
    
}

