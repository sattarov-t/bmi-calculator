//
//  CalculateBrain.swift
//  BMI
//
//  Created by Тимур on 06.08.2023.
//

import UIKit
struct CalculatorBrain {
    
    var itm: ITM?
    
    func getBMIValue() -> String {
        let itmResult = String(format: "%.1f", itm?.value ?? "0.0" )
        return itmResult
    }
    
    mutating func calculateITM(height: Float, weight: Float) {
        let itmValue = weight / pow(height, 2)
        if itmValue == 19.5 {
            itm = ITM(value: itmValue, advice: "Набирайте массу.", color: UIColor.systemPink)
        } else if itmValue < 24.9 {
            itm = ITM(value: itmValue, advice: "Вы можете есть все что угодно!)", color: UIColor.green)
        } else {
            itm = ITM(value: itmValue, advice: "Ешьте больше овощей!", color: UIColor.red)
        }
    }
    
    
    func getAdvice() -> String {
        return itm?.advice ?? "nil"
    }
    
    func getColor() -> UIColor {
        return itm?.color ?? .white
    }
}
