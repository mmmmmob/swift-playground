//
//  ResultViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Theppitak M. on 06.04.2024.
//  Copyright © 2024 App Brewery. All rights reserved.
//
//  Created with CocoaTouch template

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var colorLabel: UIImageView!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var bmiValue: Float?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var bmiForText = String(describing: bmiValue!)
        var bmiForColor = bmiValue!
        
        bmiLabel.text = bmiForText
        
        if bmiForColor < 18.5 {
            adviceLabel.text = "Are you okay?"
            colorLabel.backgroundColor = UIColor.systemBlue
        } else if bmiForColor < 24.9 {
            adviceLabel.text = "You did great boo!"
            colorLabel.backgroundColor = UIColor.systemGreen
        } else {
            adviceLabel.text = "Eat less hun."
            colorLabel.backgroundColor = UIColor.systemRed
        }
        
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
