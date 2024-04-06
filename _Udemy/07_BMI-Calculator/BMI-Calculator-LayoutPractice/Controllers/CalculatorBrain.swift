//
//  CalculatorBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Theppitak M. on 06.04.2024.
//  Copyright © 2024 App Brewery. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmiValue: String?
    
    mutating func calculateBMI(height: Float, weight: Float) -> String {
        let bmi = weight / pow(height, 2)
        bmiValue = String(round(bmi * 10)/10)
        
        return bmiValue!
    }
    
}
