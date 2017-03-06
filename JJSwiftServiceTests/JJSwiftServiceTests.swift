//
//  JJSwiftServiceTests.swift
//  JJSwiftServiceTests
//
//  Created by JJ on 3/6/17.
//  Copyright © 2017 jianjing. All rights reserved.
//

import XCTest
@testable import JJSwiftService

class JJSwiftServiceTests: XCTestCase {
    
    let timeout: TimeInterval = 30.0
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testGetWeather() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let expectation = self.expectation(description: "myExpectation")
        
        JJSWeatherService().requestWeather { (result, otherInfo) in
            if result.isSuccess {
                let object = result.value as! JJSWeatherModel
                print(object)
            } else {
                let error = result.error!
                print(error)
            }
            
            expectation.fulfill()
        }
        
        waitForExpectations(timeout: timeout)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
