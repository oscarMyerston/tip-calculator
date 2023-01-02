//
//  CalculatorScreen.swift
//  tip-calculator
//
//  Created by Kelvin Fok on 2/1/23.
//

import XCTest

class CalculatorScreen {
  
  private let app: XCUIApplication
  
  init(app: XCUIApplication) {
    self.app = app
  }
  
  var totalAmountPerPersonValueLabel: XCUIElement {
    return app.staticTexts[ScreenIdentifier.ResultView.totalAmountPerPersonValueLabel.rawValue]
  }
  
  var totalBillValueLabel: XCUIElement {
    return app.staticTexts[ScreenIdentifier.ResultView.totalBillValueLabel.rawValue]
  }
  
  var totalTipValueLabel: XCUIElement {
    return app.staticTexts[ScreenIdentifier.ResultView.totalTipValueLabel.rawValue]
  }
  
  
}
