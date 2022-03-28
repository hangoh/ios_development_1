//
//  ViewController.swift
//  DiceRoll
//
//  Created by Goh Yuhan on 2022/03/28.
//

import UIKit

class ViewController: UIViewController {
    var numberup = 0
    var numberdown = 5
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    @IBOutlet weak var totalSum: UILabel!
    
    @IBAction func rollButtonPressed(_ sender: Any) {
        let diceImageArray = ["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix"]
        let dice1 = Int.random(in: 0...5)
        let dice2 = Int.random(in: 0...5)
        
        diceImageView1.image = UIImage(named:diceImageArray[dice1])
        diceImageView2.image = UIImage(named:diceImageArray[dice2])
        
        totalSum.text = String(2+dice1+dice2)
        
    }
    
}

