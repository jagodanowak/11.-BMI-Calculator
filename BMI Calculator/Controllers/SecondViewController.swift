//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Jagoda Nowak on 04/10/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //view.backgroundColor = UIColor.red  -> we can add shorthand .red, because BC expects UIColor
        view.backgroundColor = .red

        let label = UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 200)
        view.addSubview(label)
        
        
    }
    
    
}
