//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Jagoda Nowak on 04/10/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

var aaa  = ""

struct CalculatorBrain {
    
    var bmi: BMI?
    
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)

        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more gluten and 🍪", color: #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Good job, keep it up 💪🏼", color: #colorLiteral(red: 0.2353000939, green: 0.8474659324, blue: 0.8107402921, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Well.. You can do better 🙄", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        }
        
    }
    

    func getBMIValue() -> String {
        let bmiToOneDecimalPlace = String(format: "%.1f", bmi?.value ?? "0.0")
        return bmiToOneDecimalPlace
    }
    
    func getAdvice() -> String {
        //print(bmi?.advice ?? "")
        return bmi?.advice ?? ""
    
    }
    
    func getColor() -> UIColor {
        return bmi!.color
    }
    
    
}
