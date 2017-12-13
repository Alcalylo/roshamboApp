//
//  DisplayViewController.swift
//  RoshamboApp
//
//  Created by ALCALY LO on 12/11/17.
//  Copyright © 2017 ALCALY LO. All rights reserved.
//

import UIKit

class DisplayViewController: UIViewController {

    var userChoice : String!
    var computerHand: String!
    
    
    @IBOutlet var resultLabel : UILabel!
    @IBOutlet var gameImage : UIImageView!
    
    
    
    override func viewWillAppear(_ animated: Bool) {
       super.viewWillAppear(animated)
        
        if let computerHand = self.computerHand {
            if let userChoice = self.userChoice {
        
        if  computerHand == userChoice {
            self.resultLabel.text = "It's a tie!"
            self.gameImage.image = UIImage(named: "itsATie")
        }
            
        else if computerHand == "rock" && userChoice == "paper" {
            self.resultLabel.text = "Paper covers rock. You win!"
            self.gameImage.image = UIImage(named: "PaperCoversRock")
        }
            
        else if computerHand == "paper" && userChoice == "rock" {
            self.resultLabel.text = "Paper covers rock. You lose!"
            self.gameImage.image = UIImage(named: "PaperCoversRock")
        }
            
        else if computerHand == "scissors" && userChoice == "rock" {
            self.resultLabel.text = "Rock crushes scissors. You win!"
            self.gameImage.image = UIImage(named: "RockCrushesScissors")
            
        }
            
        else if computerHand == "rock" && userChoice == "scissors" {
            self.resultLabel.text = "Rock crushes scissors. You lose!"
            self.gameImage.image = UIImage(named: "RockCrushesScissors")
        }
            
        else if computerHand == "paper" && userChoice == "scissors" {
            self.resultLabel.text = "Scissors cut paper. You win!"
            self.gameImage.image = UIImage(named: "ScissorsCutPaper")
        }
            
        else if computerHand == "scissors" && userChoice == "paper" {
            self.resultLabel.text = "Scissors cut paper. You lose!"
           self.gameImage.image = UIImage(named: "ScissorsCutPaper")
            
    }
                
    }
        }
    }
        @IBAction private func dismiss() {
         self.dismiss(animated: true, completion: nil)
        }
    
    
}
