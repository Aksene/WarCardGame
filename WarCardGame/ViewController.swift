//
//  ViewController.swift
//  WarCardGame
//
//  Created by Abdou on 6/14/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    @IBOutlet weak var dealButton: UIButton!
    var leftScore = 0
    var rightScore = 0
    
    @IBAction func DealButtonTapped(_ sender: Any) {
        print("Deal Tapped")
        
        //Randomize numbers between 2 & 14
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
        
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        if (leftNumber>rightNumber) {
            //Left side wins
            leftScore = leftScore+1
            leftScoreLabel.text = String(leftScore)
        }else if(leftNumber<rightNumber) {
            //Right Side Wins
            rightScore = rightScore+1
            rightScoreLabel.text = String(rightScore)
        }else{
            //Tie
        }

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }


}

