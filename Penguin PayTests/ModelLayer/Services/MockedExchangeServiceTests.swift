//
//  MockedExchangeServiceTests.swift
//  Penguin PayTests
//
//  Created by John Edwin Guerrero Ayala on 16/02/22.
//

import XCTest
@testable import Penguin_Pay

class MockedExchangeServiceTests: XCTestCase {
    
    var sut: ExchangeService!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = MockedExchangeService()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_init_isNotNil() {
        XCTAssertNotNil(sut)
    }

}
