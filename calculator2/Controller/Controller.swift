//
//  MathProblem.swift
//  calculator2
//
//  Created by user201482 on 8/29/21.
//

import Foundation
import MathExpression




class Controller {
    var operation : Operation = .unknown
     
    var string : String = ""
    
    static func calculate(mathString : String) -> Double? {
        
        do{
            let expression = try MathExpression(mathString)
            let value = expression.evaluate()
            
            return value
            
        }
        catch{
            print("Parser error!")
            return nil
        }
        
    }
    
    
}
