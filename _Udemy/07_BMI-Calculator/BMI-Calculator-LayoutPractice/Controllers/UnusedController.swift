//
//  SecondViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Theppitak M. on 06.04.2024.
//  Copyright © 2024 App Brewery. All rights reserved.
//

import UIKit

class UnusedController: UIViewController {
    
    // to have access in first ViewController file
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // adjust view bgColor
        view.backgroundColor = .red
        
        // create new label, link value and adjust position
        let label = UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        
        //add label to view
        view.addSubview(label)
    }
    
}
