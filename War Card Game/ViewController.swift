//
//  ViewController.swift
//  War Card Game
//
//  Created by Nicholas Scarth on 25/04/2020.
//  Copyright © 2020 Nicholas Scarth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftImageView: UIImageView!
    
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    
 

    @IBOutlet weak var playerScoreLabel: UILabel!
    
    
    
    @IBOutlet weak var computerScoreLabel: UILabel!
    
    
    var playerScore = 0
    var computerScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        
        
    }

    
    @IBAction func dealTapped(_ sender: Any) {
//        Randomanize some numbers
        let playerNumber = Int.random(in: 2...14)

        let computerNumber = Int.random(in: 2...14)

//        Update the image views
        leftImageView.image = UIImage(named: "card\(playerNumber)")
        
        rightImageView.image = UIImage(named: "card\(computerNumber)")
        
//        Compare the random numbers
        if playerNumber > computerNumber {
            playerScore += 1
//            Left side wins
            playerScoreLabel.text = String(playerScore)
        }
        else if playerNumber < computerNumber  {
            computerScore += 1
//            Right side wins
            computerScoreLabel.text = String(computerScore)
        }
        else {
//            Tie
            computerScore += 1
            computerScoreLabel.text = String(computerScore)
            playerScore += 1
            playerScoreLabel.text = String(playerScore)
        }
        
    }
    
}

