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
    
    func test_Conversion_WithBinary_resultsInInt() {
        let testBinary = "010110"
        let uintNumber = BinaryHelper.uint(from: testBinary)
        XCTAssertEqual(uintNumber, 22)
    }
    
    func test_Conversion_WithBinaryRateConversion_returnsCorrectBinary() {
        let testBinary = "010110"
        let uintNumber: Float = Float(BinaryHelper.uint(from: testBinary))
        let recipientAmount = UInt32(uintNumber * 361.50)
        let recipientAmountString = BinaryHelper.binary(from: recipientAmount)
        XCTAssertEqual(recipientAmountString, "1111100010001")
    }
}

