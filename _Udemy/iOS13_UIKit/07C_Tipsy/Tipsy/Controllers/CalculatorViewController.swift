//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    // IBOutlet for all UI elements
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var selectedPct: Double = 0.0
    var splitValue: Int = 0
    var finalTip: Double = 0.0
    
    // Define IBActions
    @IBAction func tipChanged(_ sender: UIButton) {
        switch sender {
        case zeroPctButton:
            zeroPctButton.isSelected = true
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = false
            
        case tenPctButton:
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = true
            twentyPctButton.isSelected = false
            selectedPct = 0.1
            
        case twentyPctButton:
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = true
            selectedPct = 0.2
            
        default:
            sender.isSelected = false
            
        /* === smarter approach ===
             let buttons = [zeroPctButton, tenPctButton, twentyPctButton]
             for button in buttons {
                button.isSelected = (button == sender)
             }
        */
        }
        billTextField.endEditing(true)
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitValue = Int(sender.value)
        splitNumberLabel.text = String(splitValue)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let totalBill = Double(billTextField.text ?? "0.0") ?? 0.0
        
        finalTip = (totalBill + (totalBill * selectedPct)) / Double(splitValue)
                
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.resultTip = round(finalTip * 100) / 100
            destinationVC.finalPct = selectedPct
            destinationVC.splitValue = splitValue
        }
    }
}

