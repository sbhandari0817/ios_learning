//
//  GarmentModelTest.swift
//  AssessmentTests
//
//  Created by Santosh Bhandari on 11/18/21.
//

import XCTest
@testable import Assessment

class GarmentModelTest: XCTestCase {
    var sut: Garment!
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = Garment()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testInitilization() {
        XCTAssertNotNil(sut)
    }
    
}
