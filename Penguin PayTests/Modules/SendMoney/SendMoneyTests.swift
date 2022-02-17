//
//  SendMoneyTests.swift
//  Penguin PayTests
//
//  Created by John Edwin Guerrero Ayala on 16/02/22.
//

import XCTest
@testable import Penguin_Pay

class SendMoneyTests: XCTestCase {
    
    let wireframe = SendMoneyWireframe()
    let interactor = SendMoneyInteractor()
    let formatter = SendMoneyFormatter()
    lazy var sendMoneyView: SendMoneyViewController = wireframe.viewController
    lazy var presenter = SendMoneyPresenter(view: sendMoneyView, formatter: formatter, interactor: interactor, wireframe: wireframe)

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sendMoneyView.presenter = presenter
        sendMoneyView.loadViewIfNeeded()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_Presenter_AfterViewDidLoad_IsNotNil() {
        XCTAssertNotNil(sendMoneyView.presenter)
    }
    
    func test_View_HasFirstNameTextField() {
        let firstNameTextFieldIsSubView =
        sendMoneyView.firstNameTextField?.isDescendant(
            of: sendMoneyView.view) ?? false
        XCTAssertTrue(firstNameTextFieldIsSubView)
    }
    
    func test_View_HasLastNameTextField() {
        let lastNameTextFieldIsSubView =
        sendMoneyView.lastNameTextField?.isDescendant(
            of: sendMoneyView.view) ?? false
        XCTAssertTrue(lastNameTextFieldIsSubView)
    }
    
    func test_View_HasCountryPickerView() {
        let countryTextFieldIsSubView =
        sendMoneyView.countryTextField?.isDescendant(
            of: sendMoneyView.view) ?? false
        XCTAssertTrue(countryTextFieldIsSubView)
    }
    
    func test_View_WithCountriesArray_CountryPickerIsFilledWith() {
        XCTAssertEqual(sendMoneyView.countries.count, sendMoneyView.pickerView(sendMoneyView.countryPickerView, numberOfRowsInComponent: 1))
    }
    
    func test_View_HasPhoneCode() {
        let phoneCodeLabelIsSubView =
        sendMoneyView.phoneCodeLabel?.isDescendant(
            of: sendMoneyView.view) ?? false
        XCTAssertTrue(phoneCodeLabelIsSubView)
    }
    
    func test_View_HasPhoneTextField() {
        let phoneTextFieldIsSubView =
        sendMoneyView.phoneTextField?.isDescendant(
            of: sendMoneyView.view) ?? false
        XCTAssertTrue(phoneTextFieldIsSubView)
    }
    
    func test_View_HasAmountTextFieldIsSubView() {
        let amountTextFieldIsSubView =
        sendMoneyView.amountTextField?.isDescendant(
            of: sendMoneyView.view) ?? false
        XCTAssertTrue(amountTextFieldIsSubView)
    }

}
