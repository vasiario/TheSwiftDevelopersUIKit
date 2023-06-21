//
//  ViewController.swift
//  3AlertSecondTaskMVC
//
//  Created by vasiario on 17.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func CentralButtonPressed(_ sender: Any) {
        returnResultAllert(title: "Введите слово", message: "(можно отзеркаленное) Например: olleH", preferredStyle: .alert)
    }
    
    func returnResultAllert(title: String, message: String, preferredStyle: UIAlertController.Style) {
        let allertNumbersController = UIAlertController(title: title, message: message, preferredStyle: preferredStyle)
        let actionAllertNumbersController = UIAlertAction(title: "Отобразить зеркально", style: .default) { action in
            self.textLabel?.text = Model.model.convertString(string: allertNumbersController.textFields?.first?.text ?? "")
            
        }
        
        allertNumbersController.addTextField()
        allertNumbersController.addAction(actionAllertNumbersController)
        self.present(allertNumbersController, animated: true)
    }
}

//test
