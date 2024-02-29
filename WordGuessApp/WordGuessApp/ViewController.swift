//
//  ViewController.swift
//  WordGuessApp
//
//  Created by Spencer Anderson on 2/27/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabelOL: UILabel!
    
    @IBOutlet weak var hintLabelOL: UILabel!
    
    @IBOutlet weak var textOL: UITextField!
    
    @IBOutlet weak var checkOL: UIButton!
    
    @IBOutlet weak var statusLabelOL: UILabel!
    
    @IBOutlet weak var playAgainOL: UIButton!
    
    var wordsArr = [["SWIFT", "Programming Language"], ["DOG", "Animal"], ["CYCLE", "Two wheeler"], ["MACBOOK", "Apple device"]]
    var count = 0
    var word = ""
    var lettersGuessed = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Check button should be disabled.
        checkOL.isEnabled = false
        
        //Get the first word from the array.
        word = wordsArr[count][0]
        
        displayLabelOL.text = ""
        
        //Populate the display label with the underscores. The # of underscores is equal to the # of characters in the word.
        updateUnderscores()
        
        //Get the first hint from the array.
        hintLabelOL.text = "Hint: " + wordsArr[count][1]
        
        //Clear the status label initially
        statusLabelOL.text = ""
    }

    @IBAction func textChange(_ sender: Any) {
        //Read the data from the text field
        var textEntered = textOL.text!
        //Consider only the last character by calling textEntered.last and trimming the white spaces.
        textEntered = String(textEntered.last ?? " ").trimmingCharacters(in: .whitespaces)
        textOL.text = textEntered
        
        if(textEntered.isEmpty) {
            checkOL.isEnabled = false
        }
        else {
            checkOL.isEnabled = true
        }

    }
    
    @IBAction func checkButtonClicked(_ sender: Any) {
        //Get the text from the text field.
        var letter = textOL.text!
        
        //Replace the guessed letter if the letter is part of the word.
        lettersGuessed = lettersGuessed + letter
        var revealedWord = ""
        for l in word {
            if(lettersGuessed.contains(l)) {
                revealedWord += "\(l)"
            }
            else {
                revealedWord += "_ "
            }
        }
        
        //Assigning the word to display label after a guess.
        displayLabelOL.text = revealedWord
        textOL.text = ""
        
        //If the word is guessed correctly, we are enabling play again button and disabling the check button.
        if displayLabelOL.text!.contains("_") == false {
            playAgainOL.isHidden = false
            playAgainOL.isEnabled = true
            checkOL.isEnabled = false
        }
        checkOL.isEnabled = false
    }
    
    
    @IBAction func playAgainButtonClicked(_ sender: Any) {
        //Reset the button to display initially.
        playAgainOL.isHidden = true
        
        //Clear the label.
        lettersGuessed = ""
        count += 1
        
        //If the count reaches the end of the array, then print "Congratulations" in the status label.
        if count == wordsArr.count {
            statusLabelOL.text = "Congratulations! You are done with this game!"
            
            //Clearing the labels
            displayLabelOL.text = ""
            hintLabelOL.text = ""
        }
        else {
            //Fetch the next word from the array.
            word = wordsArr[count][0]
            
            //Fetch the hint related to the word.
            hintLabelOL.text = "Hint: "
            hintLabelOL.text! += wordsArr[count][1]
            
            //Enabling the check button.
            checkOL.isEnabled = true
            
            displayLabelOL.text = ""
            updateUnderscores()
        }
    }
    
    func updateUnderscores() {
        for letter in word {
            displayLabelOL.text! += "_ "
        }
    }
    
}

