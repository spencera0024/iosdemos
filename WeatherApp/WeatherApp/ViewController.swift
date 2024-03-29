//
//  ViewController.swift
//  WeatherApp
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
        //Read the input temperature.
        var temperature = Int(inputOL.text!)
        
        if (temperature! > 60) {
            outputOL.text = "It is hot!"
            UIView.animate(withDuration: 1, delay: 0.5, animations: {
                self.imageOL.alpha = 0
                self.imageOL.alpha = 1
                self.imageOL.image =
                UIImage(named:"hot.jpeg")
            })
        }
        else {
            outputOL.text = "It is cold!"
        }
    }
    
}

