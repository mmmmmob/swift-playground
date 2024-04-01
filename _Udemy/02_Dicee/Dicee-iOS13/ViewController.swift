//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!

//    var leftDiceNumber = 0
//    var rightDiceNumber = 5
    

    @IBAction func rollButtonPressed(_ sender: UIButton) {
//        print("Current num is \(leftDiceNumber) \(rightDiceNumber)")
        
        let dicePic = [UIImage(imageLiteralResourceName: "DiceOne"),UIImage(imageLiteralResourceName: "DiceTwo"),UIImage(imageLiteralResourceName: "DiceThree"),UIImage(imageLiteralResourceName: "DiceFour"),UIImage(imageLiteralResourceName: "DiceFive"),UIImage(imageLiteralResourceName: "DiceSix")]
        
        diceImageView1.image = dicePic[Int.random(in: 0...5)]
        diceImageView2.image = dicePic.randomElement()
        
//        leftDiceNumber += 1
//        rightDiceNumber -= 1
        
    }
    
}

