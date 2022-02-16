//
//  BinaryHelperTests.swift
//  Penguin PayTests
//
//  Created by John Edwin Guerrero Ayala on 16/02/22.
//

import XCTest
@testable import Penguin_Pay

class BinaryHelperTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_binaryHelper_withFloatNumber_resultInBinary() {
        let testFloatNumber = Float(1.5)
        let expectedBinaryNumber = testFloatNumber.bitPattern
        
        let binaryNumber = BinaryHelper.binary(from: 1.5)
        
        XCTAssertEqual(binaryNumber, expectedBinaryNumber)
    }
    
    func test_binaryHelper_withBinary_resultsInFloat() {
        let testFloatNumber = Float(1.5)
        let binaryNumber = testFloatNumber.bitPattern
        let expectedFloatNumber = Float(bitPattern: binaryNumber)
        
        let floatNumber = BinaryHelper.float(from: binaryNumber)
        
        XCTAssertEqual(floatNumber, expectedFloatNumber)
    }
}

