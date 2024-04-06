//
//  ViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
        
        calculatorBrain.bmiValue = calculatorBrain.calculateBMI(height: heightValue, weight: weightValue)
        
        /*
        
         if you want to write ViewController from scratch (see: UnusedController file)
        
        -- link UnusedController with class init --
            let secondVC = UnusedController()
        
        -- passed bmi value here to SecondVC property --
            secondVC.bmiValue = String(round(bmi * 10)/10)
        
        -- present SecondVC to current view after button pressed with animation --
            self.present(secondVC, animated: true)
        
        */
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.bmiValue
        }
    }
    
}

