//
//  DifferentLayersTestsApplicationUITests.swift
//  DifferentLayersTestsApplicationUITests
//
//  Created by Ruslan Yupyn on 8/1/16.
//  Copyright © 2016 Crossroad Labs. All rights reserved.
//

import XCTest

class DifferentLayersTestsApplicationUITests: XCTestCase {
    
    struct Tests {
        static let application = XCUIApplication()
        
        static let view0 = Tests.application.otherElements["view0"]
        static let view1 = Tests.application.otherElements["view1"]
        static let view0_0 = Tests.application.otherElements["view0_0"]
        static let view0_1 = Tests.application.otherElements["view0_1"]
        static let view0_2 = Tests.application.otherElements["view0_2"]
        static let label0 = Tests.application.staticTexts["label0"]
        static let label1 = Tests.application.staticTexts["label1"]
        static let label2 = Tests.application.staticTexts["label2"]
    }
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        Tests.application.launch()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testTopLevelIDs() {
        sleep(2)
        XCTAssert(Tests.view0.exists)
        XCTAssert(Tests.view1.exists)
        sleep(2)
        XCTAssert(Tests.view0_0.exists)
        XCTAssert(Tests.view0_1.exists)
        XCTAssert(Tests.view0_2.exists)
        sleep(2)
        XCTAssert(Tests.label0.exists)
        XCTAssert(Tests.label1.exists)
        XCTAssert(Tests.label2.exists)
        sleep(2)
       
    }
    
}
