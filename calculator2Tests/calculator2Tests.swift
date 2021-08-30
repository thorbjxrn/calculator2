//
//  calculator2Tests.swift
//  calculator2Tests
//
//  Created by user201482 on 8/28/21.
//

import XCTest
import MathExpression

@testable import calculator2

class calculator2Tests: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testAdditionCalculation() throws {
        let expression = try MathExpression("5 + 2")
        let value = expression.evaluate()
        
        XCTAssertEqual(value, 7.0)
        
    }
    
    func testSubtractionCalculation() throws {
        let expression = try MathExpression("5 - 2")
        let value = expression.evaluate()
        
        XCTAssertEqual(value, 3.0)
        
    }
    
    func testMultiplicationCalculation() throws {
        let expression = try MathExpression("5 * 2")
        let value = expression.evaluate()
        
        XCTAssertEqual(value, 10.0)
        
    }
    
    func testDivisionCalculation() throws {
        
        let expression = try MathExpression("8 / 4 * 2")
        let value = expression.evaluate()
        
        XCTAssertNotEqual(value, 1.0)
        XCTAssertEqual(value, 4.0)
        
    }
    
    func testBracketCalculation() throws {
        
        let expression = try MathExpression("(3 + 4) * 9")
        let value = expression.evaluate()
        
        XCTAssertEqual(value, 63.0)
    }
    
    func testNonBracketCalculation() throws {
        
        let expression = try MathExpression("3 + 4 * 9")
        let value = expression.evaluate()
        
        XCTAssertNotEqual(value, 63.0)
        XCTAssertEqual(value, 39.0)
        
    }
}
