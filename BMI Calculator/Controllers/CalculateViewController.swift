//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

//    var bmiValue = "0.0"
    var calculatorBrain = CalculatorBrain()
    
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        print(String(format: "%.2f", sender.value)) //rounds the Float number to 2 decimal places, returns String!; sendervalue == acutual value on slider
        heightLabel.text = String(format: "%.2f", sender.value) + "m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        print(Int(sender.value)) // == print(String(format: "%.0f", sender.value))
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight)Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
        
//        let bmi = weight / pow(height, 2) //raises the value to the power -> here 2
//        bmiValue = String(format: "%.1f", bmi)
    
        self.performSegue(withIdentifier: "goToResult", sender: self) //changing VC
    
        
        /*let secondVC = SecondViewController()
        self.present(secondVC, animated: true, completion: nil)
        secondVC.bmiValue = String(format: "%.1f", bmi) */
        //changing view by code, and transfer bmi value to the secondVC; self is refering to the name of actual class
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            //destination is VC that will be initialized when the segue gets performed
            // as! nameofVC - to take the value of var initialized in VC
            
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
            
            
        
        }
    }
}

