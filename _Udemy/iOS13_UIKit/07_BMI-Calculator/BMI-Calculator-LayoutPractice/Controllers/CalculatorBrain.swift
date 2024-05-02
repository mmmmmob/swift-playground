//
//  CalculatorBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Theppitak M. on 06.04.2024.
//  Copyright © 2024 App Brewery. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmiValue: Float?
    
    mutating func calculateBMI(height: Float, weight: Float) -> Float {
        
        let bmi = weight / pow(height, 2)
        bmiValue = round(bmi * 10)/10
        
        return bmiValue ?? 0.0
    }
    
}
