//
//  ViewController.swift
//  CourseDisplayApp
//
//  Created by Spencer Anderson on 2/22/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageViewOL: UIImageView!
    
    @IBOutlet weak var crsNumOL: UILabel!
    
    @IBOutlet weak var crsTitleOL: UILabel!
    
    @IBOutlet weak var semesterOL: UILabel!
    
    @IBOutlet weak var previousOL: UIButton!
    
    @IBOutlet weak var nextOL: UIButton!
    
    //populate an array
    let courses = [["img01", "44555", "Network Security", "fall"], ["img02", "44666", "iOS", "spring"], ["img03", "44556", "Data Streaming", "summer"]]
    
    var imgNum = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //previous button should be disabled
        previousOL.isEnabled = false
        
        //display the first course details (index 0)
        updateContents(imgNum)
    }

    @IBAction func prevBtnClicked(_ sender: Any) {
        //next button should be enabled
        nextOL.isEnabled = true
        
        //increment the image number
        imgNum = imgNum - 1
        
        //update the course details
        updateContents(imgNum)
        
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
        updateContents(imgNum)
        
        //once the user reaches the end of the array, the next button should be disabled
        if(imgNum == courses.count-1) {
            nextOL.isEnabled = false
        }
    }
    
    //helper function to update contents
    func updateContents(_ imageNumber: Int) {
        imageViewOL.image = UIImage(named: courses[imgNum][0])
        crsNumOL.text = courses[imgNum][1]
        crsTitleOL.text = courses[imgNum][2]
        semesterOL.text = courses[imgNum][3]
    }
}

