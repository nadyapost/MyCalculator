//
//  ViewController.swift
//  MyCalculator
//
//  Created by Nadya Postriganova on 8/2/19.
//  Copyright © 2019 Nadya Postriganova. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
  

    @IBOutlet weak var displayLabel: UILabel!
    
    private var isFinishedTypingNumber: Bool = true
    
    private var displayValue: Double {
        get {
            guard let number = Double(displayLabel.text!) else {fatalError("Cannot convert display label text into a Double.")}
            return number
        }
        set {
            displayLabel.text = String(newValue)
        }
        
    }
    
    private var caclulator = CalculatorLogic()
    
    @IBAction func culcButtonPressed (_ sender: UIButton) {
        //What should happen when non-number button is pressed.
        
        isFinishedTypingNumber = true
        
        caclulator.setNumber(displayValue)
        
        if let calcMethod = sender.currentTitle {
            
            
            guard let result = caclulator.calculate(symbol: calcMethod) else {fatalError("The result of the calculatiomn is nil")}
            
        displayValue = result
            
        }
    }
    
    
    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        
        //What should happen when number is entered into the keypad
        
        if let numValue = sender.currentTitle {
            if isFinishedTypingNumber {
                if numValue == "." {
                    displayLabel.text = "0."
                } else {
                    displayLabel.text = numValue
                }
                isFinishedTypingNumber = false
            } else {
            
                if numValue == "." {
                    let isInt = floor(displayValue) == displayValue
                    if !isInt {
                        return
                    }
                }
                displayLabel.text = displayLabel.text! + numValue
            }
            
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


}

