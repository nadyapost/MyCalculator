//
//  CalculatorLogic.swift
//  MyCalculator
//
//  Created by Nadya Postriganova on 10/2/19.
//  Copyright © 2019 Nadya Postriganova. All rights reserved.
//

import Foundation


struct CalculatorLogic {
    
    private var number: Double?
    
    mutating func setNumber (_ number: Double) {
        self.number = number
    
    }
    
    func calculate (symbol: String) -> Double? {
        
        if let n = number {
            if symbol == "+/-" {
                return n * -1
            }else if symbol == "%" {
                return n * 0.01
            }else if symbol == "AC" {
                return 0
            }
        }
        return nil
    }
}
