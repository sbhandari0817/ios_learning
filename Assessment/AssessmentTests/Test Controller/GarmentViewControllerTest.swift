//
//  GarmentViewControllerTest.swift
//  AssessmentTests
//
//  Created by Santosh Bhandari on 11/18/21.
//

import XCTest
@testable import Assessment

class GarmentViewControllerTest: XCTestCase {
    var sut: GarmentViewController!
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "GarmentViewController") as? GarmentViewController
        _ = sut.view
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testTableViewShouldNotBeNil() {
        XCTAssertNotNil(sut.tableView)
    }
    

}
