//
//  MathProblem.swift
//  calculator2
//
//  Created by user201482 on 8/29/21.
//

import Foundation





class Controller {
    var operation : Operation = .unknown
     
    var string : String = ""
    
    static func calculate(mathString : String) -> Double? {
        if(mathString.contains(Operation.multiply.rawValue)){
            return 1
        }
        return nil
    }
    
    func addition (first: Double, second: Double) -> Double {
        return (first + second)
    }
    
    func subtraction (first: Double, second: Double) -> Double {
        return (first - second)
    }
    
    func multiplication (first: Double, second: Double) -> Double {
        return (first * second)
    }
    
    func division (first: Double, second: Double) -> Double {
        return (first / second)
    }
    
}
