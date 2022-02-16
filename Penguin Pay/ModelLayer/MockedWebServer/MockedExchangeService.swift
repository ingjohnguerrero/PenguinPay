//
//  MockedExchangeService.swift
//  Penguin Pay
//
//  Created by John Edwin Guerrero Ayala on 16/02/22.
//

import Foundation

class MockedExchangeService: ExchangeService {
    func latestRates(completion: @escaping ([Currency], Error?) -> Void) {
        completion([], nil)
    }
}
