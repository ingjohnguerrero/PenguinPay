//
//  CurrencyTests.swift
//  Penguin PayTests
//
//  Created by John Edwin Guerrero Ayala on 16/02/22.
//

import XCTest
@testable import Penguin_Pay

class CurrencyTests: XCTestCase {
    
    var sut: Currency!
    let testCurrency: String = "KES"
    let testRate: Float = 113.66

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = Currency(countryCode: testCurrency, rate: testRate)
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_init_isNotNil() {
        XCTAssertNotNil(sut)
    }
    
    func test_init_withCountryCode_isCorrect() {
        sut = Currency(countryCode: testCurrency, rate: testRate)
        XCTAssertEqual(sut.countryCode, testCurrency)
    }
    
    func test_init_withRate_isCorrect() {
        sut = Currency(countryCode: testCurrency, rate: testRate)
        XCTAssertEqual(sut.rate, testRate)
    }
    
}
