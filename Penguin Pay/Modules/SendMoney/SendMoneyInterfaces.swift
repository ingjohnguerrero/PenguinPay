//
//  SendMoneyInterfaces.swift
//  Penguin Pay
//
//  Created by John Edwin Guerrero Ayala on 16/02/22.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

protocol SendMoneyWireframeInterface: WireframeInterface {
}

protocol SendMoneyViewInterface: ViewInterface {
}

protocol SendMoneyPresenterInterface: PresenterInterface {
}

protocol SendMoneyFormatterInterface: FormatterInterface {
    func binaryAmount(fromUInt uintNumber: UInt32) -> String
    func binaryAmount(fromFloat floatNumber: Float) -> String
    func intAmount(fromBinary binaryNumber: String) -> UInt32
}

protocol SendMoneyInteractorInterface: InteractorInterface {
}
