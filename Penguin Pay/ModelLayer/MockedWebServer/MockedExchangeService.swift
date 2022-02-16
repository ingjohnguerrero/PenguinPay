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
        guard let jsonData = JsonHelper
                .data(from: .exhangeRates) else { return completion([], ExchangeServiceError.unableToLoadMock) }
        do {
            let latestExchangesDTO = try JSONDecoder().decode(LatestExchangesDTO.self, from: jsonData)
            var currencyRates: [Currency] = []
            currencyRates.append(Currency(countryCode: "KES", rate: latestExchangesDTO.rates.kenya))
            currencyRates.append(Currency(countryCode: "NGN", rate: latestExchangesDTO.rates.nigeria))
            currencyRates.append(Currency(countryCode: "TZS", rate: latestExchangesDTO.rates.tanzania))
            currencyRates.append(Currency(countryCode: "UGX", rate: latestExchangesDTO.rates.uganda))
            completion(currencyRates, nil)
        } catch {
            print(String(describing: error))
            completion([], error)
        }
    }
}
