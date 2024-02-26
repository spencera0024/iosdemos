//
//  ViewController.swift
//  StatesApp
//
//  Created by Spencer Anderson on 2/26/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageViewOL: UIImageView!
        
        @IBOutlet weak var nameOL: UILabel!
        
        @IBOutlet weak var yearOL: UILabel!
        
        @IBOutlet weak var flowerOL: UILabel!
        
        @IBOutlet weak var previousOL: UIButton!
        
        @IBOutlet weak var nextOL: UIButton!
        
        //populate an array
        let states = [["kansas.jpeg", "Kansas", "1861", "Wild Sunflower"], ["nebraska.jpeg", "Nebraska", "1867", "Goldenrod"], ["missouri.jpeg", "Missouri", "1821", "Hawthorn Blossom"], ["oklahoma.png", "Oklahoma", "1907", "Rosa Oklahoma"]]
        
        var imgNum = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        previousOL.isEnabled = false
        //display the first course details (index 0)
        imageViewOL.image = UIImage(named: states[0][0])
        nameOL.text = states[0][1]
        yearOL.text = states[0][2]
        flowerOL.text = states[0][3]
    }

    @IBAction func prevBtnClicked(_ sender: Any) {
            //next button should be enabled
            nextOL.isEnabled = true
            
            //increment the image number
            imgNum = imgNum - 1
            
            //update the course details
            imageViewOL.image = UIImage(named: states[imgNum][0])
            nameOL.text = states[imgNum][1]
            yearOL.text = states[imgNum][2]
            flowerOL.text = states[imgNum][3]
            
            //once the users reaches the beginning of the array, the previous button should be disabled
            if(imgNum == 0) {
                previousOL.isEnabled = false
            }
        }
        
        @IBAction func nextBtnClicked(_ sender: Any) {
            //previous button should be enabled
            previousOL.isEnabled = true
            
            //increment the image number
            imgNum = imgNum + 1
            
            //update the course details
            imageViewOL.image = UIImage(named: states[imgNum][0])
            nameOL.text = states[imgNum][1]
            yearOL.text = states[imgNum][2]
            flowerOL.text = states[imgNum][3]
            
            //once the user reaches the end of the array, the next button should be disabled
            if(imgNum == states.count-1) {
                nextOL.isEnabled = false
            }
        }
    
}

