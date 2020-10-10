//
//  ViewController.swift
//  SimonSays
//
//  Created by Tyler Hikida on 2020-10-05.
//

import UIKit

class ViewController: UIViewController {

    
    var player1Score = 0
    var player2Score = 0
    
    
    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    @IBOutlet weak var yellowButton: UIButton!
    @IBOutlet weak var player1ScoreLabel: UILabel!
    @IBOutlet weak var player2ScoreLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    @IBAction func colourButtonPressDown(_ sender: UIButton) {
        sender.alpha = 0.5
    }
    
    
    @IBAction func colourButtonPressed(_ sender: UIButton) {
        
        let switchCase = SwitchCase()
        
        sender.alpha = 1.0
        
        var num = switchCase.printTag(senderTag: sender.tag)
        print(num)
        
        switch sender.tag {
        case 0:
            player1Score += 1
            player1ScoreLabel.text = String(player1Score)
        case 1:
            player1Score -= 1
            player1ScoreLabel.text = String(player1Score)
        case 2:
            player2Score += 1
            player2ScoreLabel.text = String(player2Score)
        case 3:
            player2Score -= 1
            player2ScoreLabel.text = String(player2Score)
        default:
            print("default code")
        }
    }
    
    
    @IBAction func actionButtonPressed(_ sender: UIButton) {
        print("actionButtonPressed")
    }
    
}

