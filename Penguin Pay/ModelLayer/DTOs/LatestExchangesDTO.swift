//
//  LatestExchangesDTO.swift
//  Penguin Pay
//
//  Created by John Edwin Guerrero Ayala on 16/02/22.
//

import Foundation

/// API latest currency rates result mapping object
struct LatestExchangesDTO {

    /// Base currency
    var base: String
    
    /// Currency rates
    var rates: CurrenciesResponseDTO
    
}

extension LatestExchangesDTO: Codable {
    enum CodingKeys: String, CodingKey {
        case base = "base"
        case rates = "rates"
    }
}
