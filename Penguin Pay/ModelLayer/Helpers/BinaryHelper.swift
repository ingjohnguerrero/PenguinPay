//
//  BinaryHelper.swift
//  Penguin Pay
//
//  Created by John Edwin Guerrero Ayala on 16/02/22.
//

import Foundation

struct BinaryHelper {    
    static func uint(from binaryString: String) -> UInt32 {
        return UInt32(binaryString, radix: 2) ?? 0
    }
    
    static func binary(from uintNumber: UInt32) -> String {
        return String(uintNumber, radix: 2)
    }
}
