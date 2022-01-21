//
//  GramentDataViewModelTest.swift
//  AssessmentTests
//
//  Created by Santosh Bhandari on 11/18/21.
//

import XCTest
@testable import Assessment

class GramentDataViewModelTest: XCTestCase {
    
    var sut: GarmentDataViewModel!
    let garment1 = Garment(context: Context.context)
    let garment2 = Garment(context: Context.context)

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = GarmentDataViewModel()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testGarmentDataViewModelInitialization() {
        XCTAssertNotNil(sut)
    }
    
    func testGarmentDataViewModelDataStructure() {
        garment1.name = "T-Shirt"
        garment2.name = "Jacket"
        sut.garments.append(garment1)
        sut.garments.append(garment2)
        XCTAssertEqual(sut.garments.count, 2)
        XCTAssertNotEqual(sut.garments[0].name, "T-Shir")
    }
}
