//
//  ViewController.swift
//  Calculadora
//
//  Created by alumno on 9/2/24.
//

import UIKit



class ViewController: UIViewController {
    
    @IBOutlet weak var calculatorWorking: UILabel!
    
    @IBOutlet weak var calculatorResults: UILabel!
    
    var workings:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clearAll()
        
    }
    func clearAll(){
        workings = ""
        calculatorWorking.text = ""
        calculatorResults.text = ""
    }
    
    @IBAction func allCleanTap(_ sender: Any) {
        clearAll()
    }
    
    @IBAction func backTap(_ sender: Any) {
        if(workings.isEmpty){
            workings.removeLast()
            calculatorWorking.text = workings
        }
    }
    
    func addToWirkings(value: String){
        workings = workings + value
        calculatorWorking.text = workings
    }
    
    @IBAction func porcentTap(_ sender: Any) {
        addToWirkings(value: "%")
    }
    
    @IBAction func divideTap(_ sender: Any) {
        addToWirkings(value: "/")
    }
    
    @IBAction func multiTap(_ sender: Any) {
        addToWirkings(value: "*")
    }
    
    @IBAction func menosTap(_ sender: Any) {
        addToWirkings(value: "-")
    }
    
    @IBAction func masTap(_ sender: Any) {
        addToWirkings(value: "+")
    }
    
    
    @IBAction func igualTap(_ sender: Any) {
        if(validInput()){
            let checkedWorkingsForPorcent = workings.replacingOccurrences(of: "%", with: "*0.01")
            let expression = NSExpression(format: checkedWorkingsForPorcent)
            let result = expression.expressionValue(with: nil, context: nil) as! Double
            let resultString = formatResult(result: result)
            calculatorResults.text = resultString
        }
        else{
            let alert = UIAlertController(title: "entrada invalida",
                                          message: "No ppuedo hacer eso hermose",
                                          preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Oks hermose", style: .default))
            self.present(alert, animated: true, completion: nil)
        }

    }
    
    func validInput() -> Bool{
        var count = 0
        var funCharIndexes = [Int]()
        
        for char in workings{
            if(CaracterEspecial(char: char)){
                funCharIndexes.append(count)
            }
            count += 1
        }
        
        var previous: Int = -1
        
        
        for index in funCharIndexes{
            if (index == 0){
                return false
            }
            if (index == workings.count - 1){
                return false
            }
            
            if(previous != -1){
                if(index - previous == 1){
                    return false
                }
            }
            previous = index

        }
        return true
    }
    
    func CaracterEspecial(char: Character) -> Bool{
        if(char == "*"){
            return true
        }
        if(char == "/"){
            return true
        }
        if(char == "+"){
            return true
        }
        return false
    }
    
    func formatResult(result: Double) -> String{
        if(result.truncatingRemainder(dividingBy: 1) == 0){
            return String(format: "%.0f", result)
        }
        else{
            return String(format: "%.2f", result)
        }
    }
    
    
    @IBAction func puntoTap(_ sender: Any) {
        addToWirkings(value: ".")
    }
    
    
    @IBAction func ceroTap(_ sender: Any) {
        addToWirkings(value: "0")
    }
    
    
    @IBAction func unoTap(_ sender: Any) {
        addToWirkings(value: "1")
    }
    
    
    @IBAction func dosTap(_ sender: Any) {
        addToWirkings(value: "2")
    }
    
    
    @IBAction func tresTap(_ sender: Any) {
        addToWirkings(value: "3")
    }
    
    
    @IBAction func cuatroTap(_ sender: Any) {
        addToWirkings(value: "4")
    }
    
    
    @IBAction func cincoTap(_ sender: Any) {
        addToWirkings(value: "5")
    }
    
    
    @IBAction func seisTap(_ sender: Any) {
        addToWirkings(value: "6")
    }
    
    
    @IBAction func sieteTap(_ sender: Any) {
        addToWirkings(value: "7")
    }
    
    @IBAction func ochoTap(_ sender: Any) {
        addToWirkings(value: "8")
    }
    
    
    @IBAction func nueveTap(_ sender: Any) {
        addToWirkings(value: "9")
    }
    
    
}
    

