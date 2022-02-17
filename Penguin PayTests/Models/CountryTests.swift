//
//  CountryTests.swift
//  Penguin PayTests
//
//  Created by John Edwin Guerrero Ayala on 16/02/22.
//

import XCTest
@testable import Penguin_Pay

class CountryTests: XCTestCase {
    
    var sut: Country!
    let testCode = "KES"
    let testName = "Kenya"
    let testPhonePrefix = "+254"
    let testDigitsAfterPrefix = 9

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = Country(
            name: testName,
            code: testCode,
            phonePrefix: testPhonePrefix,
            digitsAfterPrefix: testDigitsAfterPrefix
        )
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_Currency_initWithInformation() {
        XCTAssertEqual(sut.name, testName)
        XCTAssertEqual(sut.code, testCode)
        XCTAssertEqual(sut.phonePrefix, testPhonePrefix)
        XCTAssertEqual(sut.digitsAfterPrefix, testDigitsAfterPrefix)
    }
}
