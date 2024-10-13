//
//  ViewModel.swift
//  EltexCalc
//
//  Created by Арсений on 12.10.2024.
//

import Foundation

class ViewModel {
    private var currentValue: Int = 0
    private var prevValue: Int = 0
    private var totalValue: Int = 0
    //private var compositeNumbers = [Int]()
    private var firstValue: Bool = true
    
    var closure: (String) -> ()
    init(closure: @escaping (String) -> ()) {
        self.closure = closure
    }
    
   func tapOperation(operation: Operations) {
        switch operation {
        case .multiplication:
            if firstValue {
                prevValue = 0
            } else {
                
            }
        case .division: break
            
        case .addition: break
        case .subtraction: break
        case .equals: break
        }
    }
    
    func tapNumber(button: Buttons) {
        switch button {
        case .one:
            if firstValue {
                totalValue = 1
            }
            else {
                totalValue = Int(String(totalValue) + String(1)) ?? 0
            }
        case .two:
            if firstValue {
                totalValue = 2
            }
            else {
                totalValue = Int(String(totalValue) + String(2)) ?? 0
            }
        case .three:
            if firstValue {
                totalValue = 3
            }
            else {
                totalValue = Int(String(totalValue) + String(3)) ?? 0
            }
        case .four:
            if firstValue {
                totalValue = 4
            }
            else {
                totalValue = Int(String(totalValue) + String(4)) ?? 0
            }
        case .five:
            if firstValue {
                totalValue = 5
            }
            else {
                totalValue = Int(String(totalValue) + String(5)) ?? 0
            }
        case .six:
            if firstValue {
                totalValue = 6
            }
            else {
                totalValue = Int(String(totalValue) + String(6)) ?? 0
            }
        case .seven:
            if firstValue {
                totalValue = 7
            }
            else {
                totalValue = Int(String(totalValue) + String(7)) ?? 0
            }
        case .eight:
            if firstValue {
                totalValue = 8
            }
            else {
                totalValue = Int(String(totalValue) + String(8)) ?? 0
            }
        case .nine:
            if firstValue {
                totalValue = 9
            }
            else {
                totalValue = Int(String(totalValue) + String(9)) ?? 0
            }
        default: break
        }
        
        firstValue = false
        
        closure("\(totalValue)")
    }
}
