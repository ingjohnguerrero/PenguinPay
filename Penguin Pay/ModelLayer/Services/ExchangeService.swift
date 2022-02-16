//
//  ExchangeService.swift
//  Penguin Pay
//
//  Created by John Edwin Guerrero Ayala on 16/02/22.
//

import Foundation

/// Service in charge of prividing Movie data
protocol ExchangeService {
    typealias CurrenciesResponse = (_ currencies: [Currency], _ error: Error?) -> Void

    /// Request latest exchange rates
    /// - Parameters:
    ///   - completion: How to handle the information upon response from server
    func latestRates(completion: @escaping ExchangeService.CurrenciesResponse)
}
