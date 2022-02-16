//
//  CurrenciesResponseDTO.swift
//  Penguin Pay
//
//  Created by John Edwin Guerrero Ayala on 16/02/22.
//

import Foundation

// FIXME: Add generic implementation for coding all currencies
/// API currencies response result mapping object
struct CurrenciesResponseDTO {

    /// Kenya
    var kenya: Float
    
    /// Nigeria
    var nigeria: Float
    
    /// Tanzania
    var tanzania: Float
    
    /// Uganda
    var uganda: Float
    
}

extension CurrenciesResponseDTO: Codable {
    enum CodingKeys: String, CodingKey {
        case kenya = "KES"
        case nigeria = "NGN"
        case tanzania = "TZS"
        case uganda = "UGX"
    }
}
