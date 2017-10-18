//
//  ViewController.swift
//  War
//
//  Created by Narith.
//  Copyright © 2017 Narith. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    var leftScore = 0
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    var rightScore = 0

    
    let cardNames = ["card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "jack", "queen", "king", "ace"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func DealTapped(_ sender: UIButton) {
        
        // Randomize left number from 0 to 12
        let leftNumber = Int(arc4random_uniform(13))
        
        // Set left image
        leftImageView.image = UIImage(named: cardNames[leftNumber])
        
        // Randomize right number from 0 to 12
        let rightNumber = Int(arc4random_uniform(13))
        
        // Set right image
        rightImageView.image = UIImage(named: cardNames[rightNumber])
        
        // Compare the card numbers
        // Left Card Wins
        if leftNumber > rightNumber {
            
            // Increment score variable to by 1
            leftScore += 1
            
            // Update score label
            leftScoreLabel.text = String(leftScore)
        }
        // Tie
        else if leftNumber == rightNumber {
        }
        // Right card wins
        else {
            // Increment score variable to by 1
            rightScore += 1
            
            // Update score label
            rightScoreLabel.text = String(rightScore)
        }
    }

    @IBAction func resetLabel(_ sender: Any) {
        leftScoreLabel.text = String(0)
        leftImageView.image = UIImage(named: "back")
        rightScoreLabel.text = String(0)
        rightImageView.image = UIImage(named: "back")
    }
}

