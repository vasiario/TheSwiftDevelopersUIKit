//
//  ViewController.swift
//  5appPickerBirthday
//
//  Created by vasiario on 20.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //passwordTextField isSecureTextEntry
                passwordTextField.isSecureTextEntry = true
        
    }
    
    @IBAction func autorizationButton(_ sender: Any) {
        //        verification allert
        if emailTextField.text != "123" && passwordTextField.text != "123" {
            autorizationAlert(title: "Ошибка", message: "Неверный логин или пароль", preferredStyle: .alert)
        }
        
        
        //        using secondViewController
        let secondViewController = storyboard?.instantiateViewController(withIdentifier: "SecondViewController")
        navigationController?.pushViewController(secondViewController!, animated: true)
    }
    
    //        allert after autorization
    func autorizationAlert(title: String, message: String, preferredStyle: UIAlertController.Style) {
        let alertAutorization = UIAlertController(title: title, message: message, preferredStyle: preferredStyle)
        let actionFistAllertController = UIAlertAction(title: "Попробовать снова", style: .default) { action in
        }
        alertAutorization.addAction(actionFistAllertController)
        self.present(alertAutorization, animated: true)
    }
    
    
    
        @IBAction func eyeButtonPreseed(_ sender: Any) {
            if passwordTextField.isSecureTextEntry == false {
                passwordTextField.isSecureTextEntry = true
            } else {
                passwordTextField.isSecureTextEntry = false
            }
        }
}
