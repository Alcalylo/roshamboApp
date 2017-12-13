//
//  ViewController.swift
//  RoshamboApp
//
//  Created by ALCALY LO on 12/11/17.
//  Copyright © 2017 ALCALY LO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var rock: UIButton!
    @IBOutlet var paper: UIButton!
    @IBOutlet var scissors: UIButton!
    @IBOutlet var label: UILabel!
    
    var userChoice : String!
    var computerHand: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func rockChoice() {
        
        let controller : DisplayViewController
        controller = storyboard?.instantiateViewController(withIdentifier: "DisplayViewController") as! DisplayViewController
        
        controller.userChoice = "rock"
        controller.computerHand = opponentPlay()
        print (controller.computerHand)
        
        present(controller, animated: true, completion: nil)
        
    }
    
    
    
    func opponentPlay() -> String! {
        
        let randomValue = 1 + arc4random() % 3
        
        switch randomValue {
            
        case 1: computerHand = "rock"
        case 2: computerHand = "paper"
        case 3: computerHand = "scissors"
        default : computerHand = "No valid input"
        }
        
        return computerHand
    }
    
    @IBAction private func paperChoice(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "play", sender: self)
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "play" {
            
            let controller = segue.destination as! DisplayViewController
            
            controller.computerHand = opponentPlay()
            controller.userChoice = "scissors"
        }
    }
    
    

}

