//
//  ViewController.swift
//  DiscountApp
//
//  Created by Spencer Anderson on 2/1/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var amountOL: UITextField!
    
    @IBOutlet weak var discountOL: UITextField!
    
    @IBOutlet weak var amountLabel: UILabel!
    
    @IBOutlet weak var discountLabel: UILabel!
    
    @IBOutlet weak var finalAmountLabel: UILabel!
    
    @IBOutlet weak var imageOL: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calcBtnClicked(_ sender: Any) {
        var amount = Double(amountOL.text!)
        var discount = Double(discountOL.text!)
        var finalPrice = amount! - (amount! * discount!)
        amountLabel.text = "Entered amount: \(amount!)"
        discountLabel.text = "Entered discount rate: \(discount!)"
        finalAmountLabel.text = "Price after discount: \(finalPrice)"
        if(discount! > 0) {
            imageOL.image = UIImage(named: "thumbsUpImage.jpeg")
        }
        else {
            imageOL.image = UIImage(named: "thumbsDownImage.png")
        }
    }
}

