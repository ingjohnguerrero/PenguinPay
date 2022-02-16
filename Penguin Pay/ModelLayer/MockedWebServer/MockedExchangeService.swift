//
//  MockedExchangeService.swift
//  Penguin Pay
//
//  Created by John Edwin Guerrero Ayala on 16/02/22.
//

import Foundation

class MockedExchangeService: ExchangeService {
    
    /// Get latest exchange rates from json files
    /// - Parameter completion: Response handling closure
    func latestRates(completion: @escaping ([Currency], Error?) -> Void) {
        completion([], nil)
    }
}
