//
//  SnapshotTestUITests.swift
//  SnapshotTestUITests
//
//  Created by Chris Ollenburg on 3/9/16.
//  Copyright © 2016 ollendev. All rights reserved.
//

import XCTest

class SnapshotTestUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        XCUIApplication().childrenMatchingType(.Window).elementBoundByIndex(0).tap()
        snapshot("01LoginScreen")
    }
    
}
