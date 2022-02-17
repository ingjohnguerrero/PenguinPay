//
//  SendMoneyFormatterTests.swift
//  Penguin PayTests
//
//  Created by John Edwin Guerrero Ayala on 16/02/22.
//

import XCTest
@testable import Penguin_Pay

class SendMoneyFormatterTests: XCTestCase {
    
    var sut: SendMoneyFormatter!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = SendMoneyFormatter()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_Init_isNotNil() {
        XCTAssertNotNil(sut)
    }
    
    func test_Format_WithGivenBinary_ReturnsInt() {
        let intNumber = sut.intAmount(fromBinary: "010110")
        XCTAssertEqual(intNumber, 22)
    }
    
    func test_Format_WithGivenBinary_ReturnsFloat() {
        let floatNumber = sut.intAmount(fromBinary: "010110")
        XCTAssertEqual(floatNumber, 22)
    }
    
    func test_Format_WithGivenInt_ReturnsBinary() {
        let binaryNumber = sut.binaryAmount(fromUInt: 22)
        XCTAssertEqual(binaryNumber, "10110")
    }
    
    func test_Format_WithGivenFloat_ReturnsBinary() {
        let binaryNumber = sut.binaryAmount(fromFloat: 22.0)
        XCTAssertEqual(binaryNumber, "10110")
    }

}
