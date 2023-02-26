//
//  HomeViewController.swift
//  iOS-Calculator
//
//  Created by Juan Aguilar on 19/02/23.
//

import UIKit
import SwiftUI

// Evitar que la clase se extienda usando final.
final class HomeViewController: UIViewController {

    // MARK: - Outlets
    
    @IBOutlet weak var resultLabel: UILabel! // Result
    
    // Numbers
    @IBOutlet weak var numberZero: UIButton!
    @IBOutlet weak var numberSeven: UIButton!
    @IBOutlet weak var numberNine: UIButton!
    @IBOutlet weak var numberEight: UIButton!
    @IBOutlet weak var numberSix: UIButton!
    @IBOutlet weak var numberFive: UIButton!
    @IBOutlet weak var numberFour: UIButton!
    @IBOutlet weak var numberThree: UIButton!
    @IBOutlet weak var numberTwo: UIButton!
    @IBOutlet weak var numberOne: UIButton!
    @IBOutlet weak var decimalNumber: UIButton!
    
    // Operators
    @IBOutlet weak var acOperator: UIButton!
    @IBOutlet weak var multiplicationOperator: UIButton!
    @IBOutlet weak var substractionOperator: UIButton!
    @IBOutlet weak var aditionOperator: UIButton!
    @IBOutlet weak var equalsOperator: UIButton!
    @IBOutlet weak var divisionOperator: UIButton!
    @IBOutlet weak var percentOperator: UIButton!
    @IBOutlet weak var plusMinusOperator: UIButton!
    
    // MARK: - Variables
    private var total: Double = 0 // Resultado
    private var temp: Double = 0 // Valor temporal
    private var isOperating: Bool = false // Seleccionar un operador
    private var isDecimal: Bool = false // Seleccionar decimal
    private var operation: OperationType = .none // Operacion inicial
    
    // MARK: - Constants
    private let kDecimalSeparator = Locale.current.decimalSeparator!
    private let kMaxLength = 9
    private let kTotal = "total"
    
    private enum OperationType {
        case none, addition, substraction, multiplication, division, percent
    }
    
    // Formateadores de numeros
    
    private let auxFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        let locale = Locale.current
        formatter.groupingSeparator = ""
        formatter.decimalSeparator = locale.decimalSeparator
        formatter.numberStyle = .decimal
        formatter.maximumIntegerDigits = 100
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 100
        return formatter
    }()
    
    private let auxTotalFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        let locale = Locale.current
        formatter.groupingSeparator = ""
        formatter.decimalSeparator = ""
        formatter.numberStyle = .decimal
        formatter.maximumIntegerDigits = 100
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 100
        return formatter
    }()
    
    
    private let printFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        let locale = Locale.current
        formatter.groupingSeparator = locale.groupingSeparator
        formatter.decimalSeparator = locale.decimalSeparator
        formatter.numberStyle = .decimal
        formatter.maximumIntegerDigits = 9
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 8
        return formatter
    }()
    
    private let printScientificFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .scientific
        formatter.maximumFractionDigits = 3
        formatter.exponentSymbol = "e"
        return formatter
    }()
    
    
    // MARK: - Initialization
    
    init() {
        super.init(nibName: nil, bundle: nil);
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        decimalNumber.setTitle(kDecimalSeparator, for: .normal);
        
        total = UserDefaults.standard.double(forKey: kTotal);
        
        // Resultado inicial
        result()
     
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        numberZero.round()
        numberOne.round()
        numberTwo.round()
        numberThree.round()
        numberFour.round()
        numberFive.round()
        numberSix.round()
        numberSeven.round()
        numberEight.round()
        numberNine.round()
        
        acOperator.round()
        plusMinusOperator.round()
        percentOperator.round()
        divisionOperator.round()
        multiplicationOperator.round()
        substractionOperator.round()
        aditionOperator.round()
        equalsOperator.round()
        decimalNumber.round()
    }
    
    // MARK: - Actions
    
    
    @IBAction func acAction(_ sender: UIButton) {
        clear()
        sender.shine()
    }
    
    @IBAction func plusMinusAction(_ sender: UIButton) {
        temp *= -1; // Invertir signo
        resultLabel.text = printFormatter.string(from: NSNumber(value: temp))
        sender.shine()
    }
    
    @IBAction func percentageAction(_ sender: UIButton) {
        if operation != .percent {
            result()
        }
        
        isOperating = true
        operation = .percent
        result()
        
        sender.shine()
    }
    
    @IBAction func divitionAction(_ sender: UIButton) {
        if operation != .none {
            result()
        }
        
        isOperating = true
        operation = .division
        sender.selectOperation(true);
        
        sender.shine()
    }
    
    @IBAction func multiplicationAction(_ sender: UIButton) {
        if operation != .none {
            result()
        }
        
        isOperating = true
        operation = .multiplication
        sender.selectOperation(true);
        
        sender.shine()
    }
    
    @IBAction func substractAction(_ sender: UIButton) {
        if operation != .none {
            result()
        }
        
        isOperating = true
        operation = .substraction
        sender.selectOperation(true);
        
        sender.shine()
    }
    
    @IBAction func aditionAction(_ sender: UIButton) {
        if operation != .none {
            result()
        }
        
        isOperating = true
        operation = .addition
        sender.selectOperation(true);
        
        sender.shine()
    }
    
    @IBAction func equalAction(_ sender: UIButton) {
        result()
        sender.shine()
    }
    
    @IBAction func decimalAction(_ sender: UIButton) {
        
        let currentTemp = auxTotalFormatter.string(from: NSNumber(value: temp))!
        
        if !isOperating && currentTemp.count >= kMaxLength {
            return
        }
        
        resultLabel.text! += kDecimalSeparator
        isDecimal = true
        
        selecVisualOperation()
        
        sender.shine()
    }
    
    
    @IBAction func numberAction(_ sender: UIButton) {
        
        acOperator.setTitle("C", for: .normal)
        
        var currentTemp = auxTotalFormatter.string(from: NSNumber(value: temp))!
        
        if !isOperating && currentTemp.count >= kMaxLength {
            return
        }
        
        currentTemp = auxFormatter.string(from: NSNumber(value: temp))!
        
        // Seleccionado una operacion
        
        if isOperating {
            total = total == 0 ? temp : total
            resultLabel.text = ""
            currentTemp = ""
            isOperating = false
        }
        
        // Seleccionado decimales
        
        if isDecimal {
            currentTemp = "\(currentTemp)\(kDecimalSeparator)"
            isDecimal = false
        }
        
        let number = sender.tag
        temp = Double(currentTemp + String(number))!
        resultLabel.text = printFormatter.string(from: NSNumber(value: temp))
        
        selecVisualOperation()
        
        sender.shine()
    }
    
    // MARK: Custom funcitons
    
    private func clear(){ // Limpiar los valores
        operation = .none
        acOperator.setTitle("AC", for: .normal)
        if temp != 0 {
            temp = 0
            resultLabel.text = "0"
        } else {
            total = 0
            result()
        }
    }
    
    private func result(){
        print(operation)
        switch(operation){
        case .none:
            // No hacemos nada
            break
        case .addition:
            total += temp
            break
        case .substraction:
            total -= temp
            break
        case .multiplication:
            total *= temp
            break
        case .division:
            total /= temp
            break
        case .percent:
            temp /= 100;
            total = temp
            break
        }
        
        // Formatear y mostrar
        
        if let currentTotal = auxTotalFormatter.string(from: NSNumber(value: total)), currentTotal.count > kMaxLength {
            resultLabel.text = printScientificFormatter.string(from: NSNumber(value: total));
        } else {
            resultLabel.text = printFormatter.string(from: NSNumber(value: total))
        }
        
        operation = .none
        
        selecVisualOperation()
        
        UserDefaults.standard.set(total, forKey: kTotal);
        
        print("Total: \(total)")
    }
    
    private func selecVisualOperation(){
        print(isOperating);
        if !isOperating {
            // no estamos operando
            aditionOperator.selectOperation(false)
            divisionOperator.selectOperation(false)
            multiplicationOperator.selectOperation(false)
            substractionOperator.selectOperation(false)
        } else {
            switch (operation){
                
            case .none, .percent:
                aditionOperator.selectOperation(false)
                divisionOperator.selectOperation(false)
                multiplicationOperator.selectOperation(false)
                substractionOperator.selectOperation(false)
                break
            case .addition:
                aditionOperator.selectOperation(true)
                divisionOperator.selectOperation(false)
                multiplicationOperator.selectOperation(false)
                substractionOperator.selectOperation(false)
                break
            case .substraction:
                substractionOperator.selectOperation(true)
                aditionOperator.selectOperation(false)
                divisionOperator.selectOperation(false)
                multiplicationOperator.selectOperation(false)
                break
            case .multiplication:
                multiplicationOperator.selectOperation(true)
                aditionOperator.selectOperation(false)
                divisionOperator.selectOperation(false)
                substractionOperator.selectOperation(false)
                break
            case .division:
                divisionOperator.selectOperation(true)
                multiplicationOperator.selectOperation(false)
                aditionOperator.selectOperation(false)
                substractionOperator.selectOperation(false)
                break
                
            }
        }
    }
    
}

