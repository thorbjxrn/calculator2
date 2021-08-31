//
//  MathProblem.swift
//  calculator2
//
//  Created by user201482 on 8/29/21.
//

import Foundation
import MathExpression




class Controller {
    
    static func calculate(mathString : String?) throws -> Double? {
        
        
            let expression = try MathExpression(mathString!)
            let value = expression.evaluate()
            
            return value
        
    }
    
    
}
