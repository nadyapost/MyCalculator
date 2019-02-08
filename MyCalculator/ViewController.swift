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
    
    
    
    @IBAction func culcButtonPressed (_ sender: UIButton){
        //What should happen when non-number button is pressed.
        
    }
    
    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        
        //What should happen when number is entered into the keypad.
        
        if let numValue = sender.currentTitle {
            displayLabel.text = numValue
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


}

