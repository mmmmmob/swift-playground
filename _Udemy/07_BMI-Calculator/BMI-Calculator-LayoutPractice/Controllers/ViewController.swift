//
//  ViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = "\(round(sender.value * 100) / 100)m"
    }
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = "\(Int(round(sender.value)))Kg"
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        let heightValue = heightSlider.value
        let weightValue = weightSlider.value
        
        let bmi = weightValue / pow(heightValue, 2)
        
        print(round(bmi * 10)/10)
    }
    
}

