//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Spencer Anderson on 2/8/24.
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

    @IBAction func submitButtonClicked(_ sender: Any) {
        var euros = Double(inputOL.text!)
        euros = round((euros! * 0.93) * 100) / 100.0
        outputOL.text = "$\(inputOL.text!) = \(euros!) Euros "
        imageOL.image = UIImage(named: "euflag.png")
    }
}

