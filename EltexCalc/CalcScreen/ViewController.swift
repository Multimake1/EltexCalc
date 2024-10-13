//
//  ViewController.swift
//  EltexCalc
//
//  Created by Арсений on 10.10.2024.
//

import UIKit

class ViewController: UIViewController {
    lazy var viewModel = ViewModel { [weak self] text in
        self?.label.text = text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button1.setTitle("1", for: .normal)
        //button1.layer.cornerRadius = button1.frame.size.width / 2
    }
    
    @IBAction func tapOne(sender: UIButton) {
        viewModel.tapNumber(button: .one)
    }
    
    @IBAction func tapTwo(sender: UIButton) {
        viewModel.tapNumber(button: .two)
    }
    
    @IBAction func tapThree(sender: UIButton) {
        viewModel.tapNumber(button: .three)
    }
    
    @IBAction func tapFour(sender: UIButton) {
        viewModel.tapNumber(button: .four)
    }
    @IBAction func tapFive(sender: UIButton) {
        viewModel.tapNumber(button: .five)
    }
    @IBAction func tapSix(sender: UIButton) {
        viewModel.tapNumber(button: .six)
    }
    @IBAction func tapSeven(sender: UIButton) {
        viewModel.tapNumber(button: .seven)
    }
    @IBAction func tapEight(sender: UIButton) {
        viewModel.tapNumber(button: .eight)
    }
    @IBAction func tapNine(sender: UIButton) {
        viewModel.tapNumber(button: .nine)
    }
    
    @IBOutlet var label: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
}

enum Buttons {
    case one
    case two
    case three
    case four
    case five
    case six
    case seven
    case eight
    case nine
}

enum Operations {
    case multiplication
    case division
    case addition
    case subtraction
    case equals
}
