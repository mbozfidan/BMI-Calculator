

import Foundation
import UIKit
struct CalculatorBrain {
    
    var bmi : BMI?
    
    
    func getBMIValue () -> String {
        
        let truebmi = String(format: "%.1f", bmi?.value ?? "0.0")
            return truebmi
        
        }
    func getAdvice() -> String {
        let advice = bmi?.advice ?? ""
        return advice
        
    }
    func getColor() -> UIColor {
        let color = bmi?.color ?? UIColor.darkGray
        return color
    }
        
    
    
    mutating func calculateBMI(weight: Float, height: Float) {
      let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Ask this to tayyip!", color: UIColor.blue)
        }
        else if bmiValue < 24.99 {
            bmi = BMI(value: bmiValue, advice: "Çıtırsın ha!", color: UIColor.green)
        }
        else {
            bmi = BMI(value: bmiValue, advice: "Belki de kemiklerin kalındır boşver!", color: UIColor.red)
        }
    }
}
