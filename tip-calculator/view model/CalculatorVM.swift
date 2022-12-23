//
//  CalculatorVM.swift
//  tip-calculator
//
//  Created by Kelvin Fok on 22/12/22.
//

import Foundation
import Combine

class CalculatorVM {
  
  struct Input {
    let billPublisher: AnyPublisher<Double, Never>
    let tipPublisher: AnyPublisher<Tip, Never>
    let splitPublisher: AnyPublisher<Int, Never>
  }
  
  struct Output {
    let updateViewPublisher: AnyPublisher<Result, Never>
  }
  
  private var cancellables = Set<AnyCancellable>()
  
  func transform(input: Input) -> Output {
    
    input.splitPublisher.sink { split in
      print("the split: \(split)")
    }.store(in: &cancellables)
    
    let result = Result(
      amountPerPerson: 500,
      totalBill: 1000,
      totalTip: 50.0)
    
    return Output(updateViewPublisher: Just(result).eraseToAnyPublisher())
    
  }
  
  
  
}
