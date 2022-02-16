//
//  BinaryHelper.swift
//  Penguin Pay
//
//  Created by John Edwin Guerrero Ayala on 16/02/22.
//

import Foundation

struct BinaryHelper {
    static func binary(from floatNumber: Float) -> UInt32 {
        return floatNumber.bitPattern
    }
    
    static func float(from binaryNumber: UInt32) -> Float {
        return Float(bitPattern: binaryNumber)
    }
}
