//
//  ViewController.swift
//  3LessonAlert
//
//  Created by vasiario on 17.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelResult: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
 
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        showAllert(title: "Hello", message: "Pleace, enter your name", preferredStyle: .alert)
    }
    
    @IBAction func additionNumbersButtonPresed(_ sender: Any) {
        showAllertNumbersButton(title: "Сложение чисел", message: "Введите любые числа:", preferredStyle: .alert)
    }
    
//    MARK: - Allert after press additionNumbersButtonPresed
    func showAllertNumbersButton(title: String, message: String, preferredStyle: UIAlertController.Style) {
        let allertNumbersController = UIAlertController(title: title, message: message, preferredStyle: preferredStyle)
        let actionAllertNumbersController = UIAlertAction(title: "Cложить числа", style: .default) { action in
            let value1 = allertNumbersController.textFields?.first?.text
            let value2 = allertNumbersController.textFields?.last?.text
            var result = 0
            
            if let result1 = Int(value1 ?? "0"), let result2 = Int(value2 ?? "0") {
               result =  result1 + result2
            }
            self.labelResult.text = String(result)
            self.showAllertResults(title: "Result: \(result)", message: "", preferredStyle: .alert)
            
            let resultAddition = self.labelResult.text
            self.showAllertResults(title: "Result: \(resultAddition ?? "0")", message: "", preferredStyle: .alert)
        }
        
        allertNumbersController.addTextField()
        allertNumbersController.addTextField()
        allertNumbersController.addAction(actionAllertNumbersController)
        self.present(allertNumbersController, animated: true)
    }
    
//    MARK: - Start Allert, after start app
    func showAllert(title: String, message: String, preferredStyle: UIAlertController.Style) {
        let fistAllertController = UIAlertController(title: title, message: message, preferredStyle: preferredStyle)
        let actionFistAllertController = UIAlertAction(title: "Enter", style: .default) { action in
            let textNameLabel = fistAllertController.textFields?.first
            self.nameLabel.text! = ("Hello, ") + (textNameLabel?.text! ?? "no text")
        }
        
        fistAllertController.addTextField()
        fistAllertController.addAction(actionFistAllertController)
        self.present(fistAllertController, animated: true)
    }
    
//   MARK: -  Show results Allert
    func showAllertResults(title: String, message: String, preferredStyle: UIAlertController.Style) {
        let resultAllertController = UIAlertController(title: title, message: message, preferredStyle: preferredStyle)
        let actionFistAllertController = UIAlertAction(title: "Thanks", style: .default)
        resultAllertController.addAction(actionFistAllertController)
        self.present(resultAllertController, animated: true)
    }
    
    @IBAction func miniGameButtonPressed(_ sender: Any) {
        miniGameAllert(title: "Угадайте число", message: "1, 2, 3, 4, 5, 6, 7, 8, 9, 10", preferredStyle: .alert)
    }
    
    //    MARK: - Allert - mini game
        func miniGameAllert(title: String, message: String, preferredStyle: UIAlertController.Style) {
            let miniGameAllertController = UIAlertController(title: title, message: message, preferredStyle: preferredStyle)
            let actionFistAllertController = UIAlertAction(title: "Enter", style: .default) { action in
                let textNameLabel = miniGameAllertController.textFields?.first
                if textNameLabel?.text == "1" {
                    print("ok")
                    self.showAllertCongratulations(title: "Ура!", message: "Вы угадали!", preferredStyle: .alert)
                } else {
                    self.showAllertCongratulations(title: "Извините", message: "Попробуйте снова", preferredStyle: .alert)
                }
                
            }
            
            miniGameAllertController.addTextField()
            miniGameAllertController.addAction(actionFistAllertController)
            self.present(miniGameAllertController, animated: true)
        }
    
    //   MARK: -  Show Congratulations!
        func showAllertCongratulations(title: String, message: String, preferredStyle: UIAlertController.Style) {
            let showAllertController = UIAlertController(title: title, message: message, preferredStyle: preferredStyle)
            let actionShowAllertController = UIAlertAction(title: "Thanks", style: .default)
            showAllertController.addAction(actionShowAllertController)
            self.present(showAllertController, animated: true)
        }
}

