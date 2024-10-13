//
//  ViewModel.swift
//  EltexCalc
//
//  Created by Арсений on 12.10.2024.
//

import Foundation

class ViewModel {
    private var currentValue: Double = 0
    private var prevValue: Double? = nil
    private var totalValue: Double = 0
    private var isOperationWasTapped: Bool = false
    private var isFraction: Bool = false
    private var currentOperation: Operations? = nil
    
    var closure: (String) -> ()
    
    init(closure: @escaping (String) -> ()) {
        self.closure = closure
    }
    
    func tapFraction() {
        calcFraction()
    }
    
    func tapOperation(operation: Operations) {
        if (self.prevValue != nil) {
            switch self.currentOperation {
            case .addition:
                self.calcAddition()
            case .subtraction:
                self.calcSubtraction()
            case .multiplication:
                self.calcMultiplication()
            case .division:
                self.calcDivision()
            case .none:
                break
            }
        }
        self.currentOperation = operation
        self.isOperationWasTapped = true
    }
    
    func tapSubOperation(operation: subOperations) {
        switch operation {
        case .clear:
            calcClear()
        case .percent:
            calcPercent()
        case .minus:
            calcMinus()
        case .equal:
            calcEqual()
        }
    }
    
    func tapNumber(button: NumericButtons) {
        if self.isOperationWasTapped {
            self.prevValue = self.currentValue + (self.prevValue ?? 0)
            //print(self.prevValue)
            self.currentValue = 0
            self.isOperationWasTapped = false
        }
        
        if self.currentValue == 0 {
            self.currentValue = Double(button.rawValue)
        }
        else {
            self.currentValue = self.currentValue * 10 + Double(button.rawValue)
        }
        
        self.closure("\(Int64(currentValue))")
    }
}

private extension ViewModel {
    func calcFraction() {
        self.isFraction = true
    }
    
    func calcClear() {
        self.currentValue = 0
        self.prevValue = nil
        self.closure("\(Int64(self.currentValue))")
    }
    
    func calcPercent() {
        self.currentValue = self.currentValue / 100
        self.closure("\(self.currentValue)")
    }
    
    func calcMinus() {
        self.currentValue = self.currentValue * (-1)
        self.closure("\(Int64(self.currentValue))")
    }
    
    func calcEqual() {
        guard let currentOperation else {return }
        switch currentOperation {
        case .multiplication:
            calcMultiplication()
        case .division:
            calcDivision()
        case .addition:
            calcAddition()
        case .subtraction:
            calcSubtraction()
        }
    }
    
    func calcAddition() {
        self.currentValue += self.prevValue ?? 0
        self.prevValue = nil
        self.currentOperation = nil
        self.closure("\(Int64(currentValue))")
    }
    
    func calcMultiplication() {
        print(self.isOperationWasTapped)
        //print(self.currentValue)
        //print(self.prevValue)
        self.currentValue = self.currentValue * (self.prevValue ?? 0)
        self.prevValue = nil
        self.currentOperation = nil
        self.closure("\(Int64(currentValue))")
    }
    func calcSubtraction() {
        self.currentValue = (self.prevValue ?? 0) - self.currentValue
        self.prevValue = nil
        self.currentOperation = nil
        self.closure("\(Int64(currentValue))")
    }
    
    func calcDivision() {
        guard self.currentValue != 0.0 else {
            self.closure("На ноль делить нельзя")
            self.currentValue = 0
            self.prevValue = nil
            self.currentOperation = nil
            return
        }
        self.currentValue = (self.prevValue ?? 0) / self.currentValue
        self.prevValue = nil
        self.currentOperation = nil
        self.closure("\(Int64(currentValue))")
    }
}
