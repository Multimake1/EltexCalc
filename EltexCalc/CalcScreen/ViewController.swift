//
//  ViewController.swift
//  EltexCalc
//
//  Created by Арсений on 10.10.2024.
//

import UIKit

enum NumericButtons: Int {
    case zero = 0
    case one = 1
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
}

enum subOperations {
    case clear
    case minus
    case percent
    case equal
}

class ViewController: UIViewController {
    lazy var viewModel = ViewModel { [weak self] text in
        self?.label.text = text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.configure()
    }
    
    @IBAction func tapFraction(sender: UIButton) {
        self.viewModel.tapFraction()
    }
    
    @IBAction func tapClear(sender: UIButton) {
        self.viewModel.tapSubOperation(operation: .clear)
    }
    
    @IBAction func tapPercent(sender: UIButton) {
        self.viewModel.tapSubOperation(operation: .percent)
    }
    
    @IBAction func tapMinus(sender: UIButton) {
        self.viewModel.tapSubOperation(operation: .minus)
    }
    
    @IBAction func tapAddition(sender: UIButton) {
        self.viewModel.tapOperation(operation: .addition)
    }
    
    @IBAction func tapSubtraction(sender: UIButton) {
        self.viewModel.tapOperation(operation: .subtraction)
    }
    
    @IBAction func tapMultiplication(sender: UIButton) {
        self.viewModel.tapOperation(operation: .multiplication)
    }
    
    @IBAction func tapDivision(sender: UIButton) {
        self.viewModel.tapOperation(operation: .division)
    }
    
    @IBAction func tapEqual(sender: UIButton) {
        self.viewModel.tapSubOperation(operation: .equal)
    }
    
    @IBAction func tapZero(sender: UIButton) {
        viewModel.tapNumber(button: .zero)
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
    @IBOutlet weak var button0: UIButton!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var buttonAddition: UIButton!
    @IBOutlet weak var buttonSubtraction: UIButton!
    @IBOutlet weak var buttonMultiplication: UIButton!
    @IBOutlet weak var buttonDivision: UIButton!
    @IBOutlet weak var buttonEqual: UIButton!
    @IBOutlet weak var buttonClear: UIButton!
    @IBOutlet weak var buttonMinus: UIButton!
    @IBOutlet weak var buttonPercent: UIButton!
    @IBOutlet weak var buttonFraction: UIButton!
}

private extension ViewController {
    func configure() {
        let FontSize: CGFloat = 50
        self.view.backgroundColor = .black
        self.label.text = "0"
        self.label.textColor = .white
        self.label.textAlignment = .right
        self.label.font = UIFont(name: "Helvetica", size: 100)
        self.label.adjustsFontSizeToFitWidth = true
        self.button0.setTitle("0", for: .normal)
        self.button0.titleLabel?.font = UIFont(name: "Helvetica", size: FontSize)
        self.button0.setTitleColor(.white, for: .normal)
        self.button0.backgroundColor = .darkGray
        self.button1.setTitle("1", for: .normal)
        self.button1.titleLabel?.font = UIFont(name: "Helvetica", size: FontSize)
        self.button1.setTitleColor(.white, for: .normal)
        self.button1.backgroundColor = .darkGray
        self.button2.setTitle("2", for: .normal)
        self.button2.titleLabel?.font = UIFont(name: "Helvetica", size: FontSize)
        self.button2.setTitleColor(.white, for: .normal)
        self.button2.backgroundColor = .darkGray
        self.button3.setTitle("3", for: .normal)
        self.button3.titleLabel?.font = UIFont(name: "Helvetica", size: FontSize)
        self.button3.setTitleColor(.white, for: .normal)
        self.button3.backgroundColor = .darkGray
        self.button4.setTitle("4", for: .normal)
        self.button4.titleLabel?.font = UIFont(name: "Helvetica", size: FontSize)
        self.button4.setTitleColor(.white, for: .normal)
        self.button4.backgroundColor = .darkGray
        self.button5.setTitle("5", for: .normal)
        self.button5.titleLabel?.font = UIFont(name: "Helvetica", size: FontSize)
        self.button5.setTitleColor(.white, for: .normal)
        self.button5.backgroundColor = .darkGray
        self.button6.setTitle("6", for: .normal)
        self.button6.titleLabel?.font = UIFont(name: "Helvetica", size: FontSize)
        self.button6.setTitleColor(.white, for: .normal)
        self.button6.backgroundColor = .darkGray
        self.button7.setTitle("7", for: .normal)
        self.button7.titleLabel?.font = UIFont(name: "Helvetica", size: FontSize)
        self.button7.setTitleColor(.white, for: .normal)
        self.button7.backgroundColor = .darkGray
        self.button8.setTitle("8", for: .normal)
        self.button8.titleLabel?.font = UIFont(name: "Helvetica", size: FontSize)
        self.button8.setTitleColor(.white, for: .normal)
        self.button8.backgroundColor = .darkGray
        self.button9.setTitle("9", for: .normal)
        self.button9.titleLabel?.font = UIFont(name: "Helvetica", size: FontSize)
        self.button9.setTitleColor(.white, for: .normal)
        self.button9.backgroundColor = .darkGray
        self.button0.layer.cornerRadius = self.button0.frame.size.height / 2
        self.button1.layer.cornerRadius = self.button1.frame.size.width / 2
        self.button2.layer.cornerRadius = self.button2.frame.size.width / 2
        self.button3.layer.cornerRadius = self.button3.frame.size.width / 2
        self.button4.layer.cornerRadius = self.button4.frame.size.width / 2
        self.button5.layer.cornerRadius = self.button5.frame.size.width / 2
        self.button6.layer.cornerRadius = self.button6.frame.size.width / 2
        self.button7.layer.cornerRadius = self.button7.frame.size.width / 2
        self.button8.layer.cornerRadius = self.button8.frame.size.width / 2
        self.button9.layer.cornerRadius = self.button9.frame.size.width / 2
        self.buttonAddition.setTitle("+", for: .normal)
        self.buttonAddition.titleLabel?.font = UIFont(name: "Helvetica", size: FontSize)
        self.buttonAddition.setTitleColor(.white, for: .normal)
        self.buttonAddition.backgroundColor = .orange
        self.buttonSubtraction.setTitle("-", for: .normal)
        self.buttonSubtraction.titleLabel?.font = UIFont(name: "Helvetica", size: FontSize)
        self.buttonSubtraction.setTitleColor(.white, for: .normal)
        self.buttonSubtraction.backgroundColor = .orange
        self.buttonMultiplication.setTitle("*", for: .normal)
        self.buttonMultiplication.titleLabel?.font = UIFont(name: "Helvetica", size: FontSize)
        self.buttonMultiplication.setTitleColor(.white, for: .normal)
        self.buttonMultiplication.backgroundColor = .orange
        self.buttonDivision.setTitle("/", for: .normal)
        self.buttonDivision.titleLabel?.font = UIFont(name: "Helvetica", size: FontSize)
        self.buttonDivision.setTitleColor(.white, for: .normal)
        self.buttonDivision.backgroundColor = .orange
        self.buttonAddition.layer.cornerRadius = self.buttonAddition.frame.size.width / 2
        self.buttonSubtraction.layer.cornerRadius = self.buttonSubtraction.frame.size.width / 2
        self.buttonMultiplication.layer.cornerRadius = self.buttonMultiplication.frame.size.width / 2
        self.buttonDivision.layer.cornerRadius = self.buttonDivision.frame.size.width / 2
        self.buttonEqual.setTitle("=", for: .normal)
        self.buttonEqual.titleLabel?.font = UIFont(name: "Helvetica", size: FontSize)
        self.buttonEqual.setTitleColor(.white, for: .normal)
        self.buttonEqual.backgroundColor = .orange
        self.buttonEqual.layer.cornerRadius = self.buttonEqual.frame.size.width / 2
        self.buttonClear.setTitle("AC", for: .normal)
        self.buttonClear.titleLabel?.font = UIFont(name: "Helvetica", size: FontSize)
        self.buttonClear.setTitleColor(.white, for: .normal)
        self.buttonClear.backgroundColor = .lightGray
        self.buttonClear.layer.cornerRadius = self.buttonClear.frame.size.width / 2
        self.buttonMinus.setTitle("+/-", for: .normal)
        self.buttonMinus.titleLabel?.font = UIFont(name: "Helvetica", size: FontSize)
        self.buttonMinus.setTitleColor(.white, for: .normal)
        self.buttonMinus.backgroundColor = .lightGray
        self.buttonMinus.layer.cornerRadius = self.buttonMinus.frame.size.width / 2
        self.buttonPercent.setTitle("%", for: .normal)
        self.buttonPercent.titleLabel?.font = UIFont(name: "Helvetica", size: FontSize)
        self.buttonPercent.setTitleColor(.white, for: .normal)
        self.buttonPercent.backgroundColor = .lightGray
        self.buttonPercent.layer.cornerRadius = self.buttonPercent.frame.size.width / 2
        self.buttonFraction.setTitle(",", for: .normal)
        self.buttonFraction.titleLabel?.font = UIFont(name: "Helvetica", size: FontSize)
        self.buttonFraction.setTitleColor(.white, for: .normal)
        self.buttonFraction.backgroundColor = .darkGray
        self.buttonFraction.layer.cornerRadius = self.buttonFraction.frame.size.width / 2
    }
}
