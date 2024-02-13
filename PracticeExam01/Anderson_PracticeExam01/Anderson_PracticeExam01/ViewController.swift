//
//  ViewController.swift
//  Anderson_PracticeExam01
//
//  Created by Spencer Anderson on 2/13/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var feetOL: UITextField!
    
    @IBOutlet weak var inchesOL: UITextField!
    
    @IBOutlet weak var weightOL: UITextField!
    
    @IBOutlet weak var outputOL: UILabel!
    
    @IBOutlet weak var imageOL: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateBMI(_ sender: Any) {
        var feet = Double(feetOL.text!)
        var inches = Double(inchesOL.text!)
        var weight = Double(weightOL.text!)
        
        feet = (feet! * 12) + inches!
        
        var bmi = round(703 * ((weight!) / (feet! * feet!)))
        
        if(bmi > 30.0) {
            outputOL.text = "Your Body Mass Index is \(bmi).\nThis is considered Obesity."
            imageOL.image = UIImage(named: "obese.jpeg")
        }
        else if (bmi > 25) {
            outputOL.text = "Your Body Mass Index is \(bmi).\nThis is considered Overweight."
            imageOL.image = UIImage(named: "overWeight.jpeg")
        }
        else if (bmi > 18.6) {
            outputOL.text = "Your Body Mass Index is \(bmi).\nThis is considered Normal👍."
            imageOL.image = UIImage(named: "normal.jpeg")
        }
        else {
            outputOL.text = "Your Body Mass Index is \(bmi).\nThis is considered Underweight."
            imageOL.image = UIImage(named: "underWeight.jpeg")
        }
    }
    
}

