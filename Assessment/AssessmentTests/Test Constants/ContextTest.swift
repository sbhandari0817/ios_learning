//
//  ContextTest.swift
//  AssessmentTests
//
//  Created by Santosh Bhandari on 11/18/21.
//

import XCTest
@testable import Assessment

class ContextTest: XCTestCase {
    let sut = Context()
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testinitilizationOfContext() {
        XCTAssertNotNil(sut)
    }

}
