//
//  SendMoneyPresenter.swift
//  Penguin Pay
//
//  Created by John Edwin Guerrero Ayala on 16/02/22.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import Foundation

final class SendMoneyPresenter {
    
    // MARK: - Public properties -
    
    var countries: [Country] = [
        Country(name: "Kenya", code: "KES", phonePrefix: "+254", digitsAfterPrefix: 9),
        Country(name: "Nigeria", code: "NGN", phonePrefix: "+234", digitsAfterPrefix: 7),
        Country(name: "Tanzania", code: "TZS", phonePrefix: "+255", digitsAfterPrefix: 9),
        Country(name: "Uganda", code: "UGX", phonePrefix: "+256", digitsAfterPrefix: 7)
    ]
    var recipientFirstName: String = ""
    var recipientLastName: String = ""
    var recipientPhoneNumber: String = ""
    var recipientAmount: String = "" {
        didSet {
            guard let country = selectedCountry else { return }
            updateRecipientExchange(to: country.code, amount: recipientAmount)
            updateSendingButtonState()
        }
    }
    var selectedCountry: Country? {
        didSet {
            guard let country = selectedCountry else { return }
            view.updateRecipientForm(withCountry: country)
        }
    }
    var isFormComplete: Bool {
        if !recipientAmount.isEmpty,
           !recipientFirstName.isEmpty,
           !recipientLastName.isEmpty,
           !recipientPhoneNumber.isEmpty,
           selectedCountry != nil
        {
            return true
        } else {
            return false
        }
    }

    // MARK: - Private properties -

    private unowned let view: SendMoneyViewInterface
    private let formatter: SendMoneyFormatterInterface
    private let interactor: SendMoneyInteractorInterface
    private let wireframe: SendMoneyWireframeInterface

    // MARK: - Lifecycle -

    init(
        view: SendMoneyViewInterface,
        formatter: SendMoneyFormatterInterface,
        interactor: SendMoneyInteractorInterface,
        wireframe: SendMoneyWireframeInterface
    ) {
        self.view = view
        self.formatter = formatter
        self.interactor = interactor
        self.wireframe = wireframe
    }
}

// MARK: - Extensions -

extension SendMoneyPresenter: SendMoneyPresenterInterface {
    func viewDidLoad() {
        interactor.updateExchangeRates { error in
            debugPrint(error)
        }
    }
    
    func sendPayment() {
        recipientFirstName = ""
        recipientLastName = ""
        recipientAmount = ""
        recipientPhoneNumber = ""
        view.resetView()
        wireframe.presentSendPaymentAlert()
    }
    
    func updateSendingButtonState() {
        view.updateSendButtonState(isFormComplete)
    }
    
    func calculateExchange(to currencyCode: String, amount: String) -> String {
        let exchangeRate: Float = interactor.exchangeRate(for: currencyCode)
        let uintNumber: Float = formatter.floatAmount(fromBinary: amount)
        let recipientAmount = UInt32(uintNumber * exchangeRate)
        let recipientAmountString = BinaryHelper.binary(from: recipientAmount)
        return recipientAmountString
    }
    
    func updateRecipientExchange(to currencyCode: String, amount: String) {
        let exchangeAmount = calculateExchange(to: currencyCode, amount: amount)
        view.updateRecipientForm(withAmount: exchangeAmount)
    }
}
