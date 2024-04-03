//
//  ViewController.swift
//  WeatherAppMVC
//
//  Created by Spencer Anderson on 3/21/24.
//

import UIKit

class HomeViewController: UIViewController {
        
    var image = ""
    var temperature:Double = 0.0
    var result = ""
    
    @IBOutlet weak var inputOL: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func CheckWeatherBtn(_ sender: Any) {
        //read the temperature and assign it to a variable. Also convert it to a double
        temperature = Double(inputOL.text!)!
        //Check the weather (hot/cold)
        if (temperature < 60.0) {
            result = "It is cold"
            image = "cold"
        }
        else {
            result = "It is hot"
            image = "hot"
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //Know the identifier
        let transition = segue.identifier
        //set the destination
        if(transition == "WeatherResults") {
            let destination = segue.destination as! ResultViewController
        }
        //Assign the values to the destination variables
    }
}

