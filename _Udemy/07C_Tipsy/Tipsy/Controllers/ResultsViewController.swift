//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Theppitak M. on 12.04.2024.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var resultTip: Double = 0.0
    var splitValue: Int = 0
    var finalPct: Double = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = String(resultTip)
        settingsLabel.text = "Split between \(splitValue) people, with \(Int(finalPct * 100))% tip."
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}
