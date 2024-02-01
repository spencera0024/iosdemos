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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calcBtnClicked(_ sender: Any) {
    }
}

