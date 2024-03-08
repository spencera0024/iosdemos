//
//  ViewController.swift
//  AnimationsApp
//
//  Created by Spencer Anderson on 3/7/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageViewOL: UIImageView!
    
    @IBOutlet weak var showMeOL: UIButton!
    
    @IBOutlet weak var happyOL: UIButton!
    
    @IBOutlet weak var sadOL: UIButton!
    
    @IBOutlet weak var angryOL: UIButton!
    
    @IBOutlet weak var shakeMeOL: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        //Keep all the components outside of the view except show me Button.
        imageViewOL.frame.origin.x = view.frame.width
        happyOL.frame.origin.x = view.frame.width
        sadOL.frame.origin.x = view.frame.width
        angryOL.frame.origin.x = view.frame.width
        shakeMeOL.frame.origin.x = view.frame.width
        
    }

    @IBAction func happyBtnClicked(_ sender: Any) {
        updateandAnimate("happy")
    }
    
    @IBAction func sadBtnClicked(_ sender: Any) {
        updateandAnimate("sad")
    }
    
    @IBAction func angryBtnClicked(_ sender: Any) {
        updateandAnimate("angry")
    }
    
    @IBAction func shakeMeBtnClicked(_ sender: Any) {
        //Increase the size of the image
        var width = imageViewOL.frame.width
        width += 40
        var height = imageViewOL.frame.height
        height += 40
        
        var x = imageViewOL.frame.origin.x
        x -= 20
        var y = imageViewOL.frame.origin.y
        y -= 20
        
        var largeFrame = CGRect(x: x, y: y, width: width, height: height)
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 50, animations: {
            self.imageViewOL.frame = largeFrame
        })
    }
    
    @IBAction func showMeBtnClicked(_ sender: Any) {
        //Move all the components from outside of the view to the center of the view.
        UIView.animate(withDuration: 1, animations: {
            self.imageViewOL.center.x = self.view.center.x
            self.happyOL.center.x = self.view.center.x
            self.sadOL.center.x = self.view.center.x
            self.angryOL.center.x = self.view.center.x
            self.shakeMeOL.center.x = self.view.center.x
        })
        
        //Disable the show me button.
        showMeOL.isHidden = true
    }
    
    func updateandAnimate(_ image:String) {
        //Make the current image opaque(alpha = 0)
        UIView.animate(withDuration: 1, animations: { self.imageViewOL.alpha = 0})
        
        //Assign the new image with an animation and make it transparent(alpha = 1)
        UIView.animate(withDuration: 1, delay: 0.5, animations: {
            self.imageViewOL.alpha = 1
            self.imageViewOL.image = UIImage(named: image)
        })
    }
    
}

