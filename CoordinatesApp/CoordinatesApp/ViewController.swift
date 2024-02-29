//
//  ViewController.swift
//  CoordinatesApp
//
//  Created by Spencer Anderson on 2/29/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageOL: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Identify the minimum of x and y values of image view.
        let minX = imageOL.frame.minX
        let minY = imageOL.frame.minY
        
        print(minX, ",", minY)
        
        let midX = imageOL.frame.midX
        let midY = imageOL.frame.midY
        print(midX, ",", midY)
        
        //Move the image view to the upper left corner of the view.
        imageOL.frame.origin.x = 0
        imageOL.frame.origin.y = 0
        
        //Move the image view to the upper right corner of the view.
        imageOL.frame.origin.x = 430
        imageOL.frame.origin.y = 0
        
        
        //Move the image view to the bottom left corner of the view.
        imageOL.frame.origin.x = 0
        imageOL.frame.origin.y = 932
        
        //Move the image view to the bottom right corner of the view.
        imageOL.frame.origin.x = 430
        imageOL.frame.origin.y = 932
        
        //Move the image view to the center of the view.
        imageOL.frame.origin.x = 215
        imageOL.frame.origin.y = 466
    }


}

