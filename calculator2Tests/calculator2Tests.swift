//
//  calculator2Tests.swift
//  calculator2Tests
//
//  Created by user201482 on 8/28/21.
//

import XCTest
@testable import calculator2

class calculator2Tests: XCTestCase {
    
    let mathOperator = Controller()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testCalculation() throws {
        XCTAssertNil(Controller.calculate(mathString: "5*5"))
               
    }
    
    
    
    func testAddition() throws {
        let var1 = 2.22 , var2 = 2.22, answ = 4.44
        
        XCTAssertEqual(mathOperator.addition(first: var1, second: var2), answ)
    }
    
    func testSubtraction() throws {
        let var1 = 2.22 , var2 = 2.22, answ = 0.00
        
        XCTAssertEqual(mathOperator.subtraction(first: var1, second: var2), answ)
    }
    
    func testMultiplication() throws {
        let var1 = 2.22 , var2 = 2.22, answ = 4.9284
        
        XCTAssertEqual(mathOperator.multiplication(first: var1, second: var2), answ)
    }
    
    func testDivision() throws {
        let var1 = 2.22 , var2 = 2.22, answ = 1.0
        
        XCTAssertEqual(mathOperator.division(first: var1, second: var2), answ)
    }


    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
