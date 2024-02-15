//
//  ViewController.swift
//  Anderson_Exam01
//
//  Created by Spencer Anderson on 2/15/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var patientOL: UITextField!
    
    @IBOutlet weak var fbgOL: UITextField!
    
    @IBOutlet weak var outputOL: UILabel!
    
    @IBOutlet weak var imageOL: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateBtn(_ sender: Any) {
        var fbg = Double(fbgOL.text!)
        var hba1c = 2.6 + (0.03 * fbg!)
        
        if(hba1c >= 6.35) {
            outputOL.text = "Patient ID: \(patientOL.text!) \n\nFBG Level: \(fbg!) (mg/dl) \n\nHbA1c(%): \(hba1c) %\n\nResult: Diabetes \n\nHealth Tip: Consult doctor for medication🩺"
            imageOL.image = UIImage(named: "diabetes.png")
        }
        else if(hba1c >= 5.60) {
            outputOL.text = "Patient ID: \(patientOL.text!) \n\nFBG Level: \(fbg!) (mg/dl) \n\nHbA1c(%): \(hba1c) %\n\nResult: Pre-Diabetes \n\nHealth Tip: You should work on your diet and maintain workout🏋️"
            imageOL.image = UIImage(named: "pre-diabetes.png")
        }
        else if(hba1c >= 4.70) {
            outputOL.text = "Patient ID: \(patientOL.text!) \n\nFBG Level: \(fbg!) (mg/dl) \n\nHbA1c(%): \(hba1c) %\n\nResult: Normal \n\nHealth Tip: You are doing great👍"
            imageOL.image = UIImage(named: "normal.png")
        }
        else {
            outputOL.text = "Patient ID: \(patientOL.text!) \n\nFBG LeveL: \(fbg!) (mg/dl) \n\nHbA1c(%): \(hba1c) %\n\nResult: Hypoglycemia \n\nHealth Tip: Eat food on time🍎"
            imageOL.image = UIImage(named: "hypoglycemia.png")
        }
    }
    
    @IBAction func resetBtn(_ sender: Any) {
        patientOL.text = ""
        fbgOL.text = ""
        outputOL.text = ""
        imageOL.image = UIImage(named: "")
    }
}

