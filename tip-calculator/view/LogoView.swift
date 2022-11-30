//
//  LogoView.swift
//  tip-calculator
//
//  Created by Kelvin Fok on 30/11/22.
//

import UIKit

class LogoView: UIView {
  
  init() {
    super.init(frame: .zero)
    layout()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  private func layout() {
    backgroundColor = .red
  }
  
  
}








