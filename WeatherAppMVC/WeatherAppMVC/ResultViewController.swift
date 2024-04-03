//
//  ResultViewController.swift
//  WeatherAppMVC
//
//  Created by Spencer Anderson on 3/21/24.
//

import UIKit

class ResultViewController: UIViewController {
    
    var image = ""
    var temperature:Double = 0.0
    var result = ""
    
    
    @IBOutlet weak var imageOL: UIImageView!
    
    @IBOutlet weak var tempOL: UILabel!
    
    @IBOutlet weak var resultOL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
