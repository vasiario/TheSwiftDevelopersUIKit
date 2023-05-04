//
//  ViewController.swift
//  10lesonNavigationViewControllerApp
//
//  Created by vasiario on 03.05.2023.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        emailTextField.keyboardType = .numberPad
        emailTextField.delegate = self
        
        passwordTextField.isSecureTextEntry = true
        passwordTextField.delegate = self

        addToolBarDone()
        emailTextField.returnKeyType = .next
        passwordTextField.returnKeyType = .done
        
    }

    @objc func doneButtonTapped() {
        // Обработка события нажатия на кнопку "Done"
        emailTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
    }
    
    fileprivate func addToolBarDone() {
        // Создание UIToolbar с кнопкой "Done"
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(doneButtonTapped))
        toolbar.items = [doneButton]
        emailTextField.inputAccessoryView = toolbar
        passwordTextField.inputAccessoryView = toolbar
    }

    @IBAction func acceptEmailPasswordButton(_ sender: Any) {
        guard emailTextField.text == "123" || passwordTextField.text == "abc" else {
            let alert = UIAlertController(title: nil, message: "неправильный логин или пароль", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "ok", style: .cancel)
            alert.addAction(alertAction)
            present(alert, animated: true)
            return
        }
        
        let secondViewController = storyboard?.instantiateViewController(withIdentifier: "SecondViewController")
        self.navigationController?.pushViewController(secondViewController!, animated: true)
    }
}
