//
//  SecondViewController.swift
//  13LessonUITextFieldApp1
//
//  Created by vasiario on 12.05.2023.
//

import UIKit

class SecondViewController: UIViewController {
    
    var nameTextField = UITextField()
    var lastNameTextField = UITextField()
    var emailTextField = UITextField()
    var passwordTextField = UITextField()
    let acceptButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        title view
        title = "Регистрация"
        
        //        textFields show
        addNameTextField()
        addLastNameTextField()
        addEmailTextField()
        addPasswordTextField()
        
        let acceptButtonFrame = CGRect(x: 134, y: 660, width: 150, height: 60)
        acceptButton.frame = acceptButtonFrame
        acceptButton.setTitle("Подтвердить", for: .normal)
        acceptButton.setTitleColor(.systemBlue, for: .normal)
        acceptButton.setTitleColor(.darkGray, for: .highlighted)
        acceptButton.addTarget(self, action: #selector(acceptButtonPressed), for: .touchUpInside)
        view.addSubview(acceptButton)
        
        
        
        //        MARK: - NotificationCenter
        NotificationCenter.default.addObserver(forName: UITextField.keyboardWillShowNotification, object: nil, queue: nil) { Notification in
            self.view.frame.origin.y = -200
        }
        
        NotificationCenter.default.addObserver(forName: UITextField.keyboardWillHideNotification, object: nil, queue: nil) { Notification in
            self.view.frame.origin.y = 0
        }
    }
    //MARK: -     Methods
    func addNameTextField() {
        let nameTextFieldFrame = CGRect(x: 20, y: 400, width: 380, height: 32)
        nameTextField.frame = nameTextFieldFrame
        nameTextField.placeholder = "Введите имя"
        nameTextField.keyboardType = .namePhonePad
        nameTextField.borderStyle = UITextField.BorderStyle.roundedRect
        nameTextField.tag = 0
        nameTextField.delegate = self
        view.addSubview(nameTextField)
    }
    
    func addLastNameTextField() {
        let lastNameTextFieldFrame = CGRect(x: 20, y: 460, width: 380, height: 32)
        lastNameTextField.frame = lastNameTextFieldFrame
        lastNameTextField.placeholder = "Введите фамилию"
        lastNameTextField.keyboardType = .namePhonePad
        lastNameTextField.borderStyle = UITextField.BorderStyle.roundedRect
        lastNameTextField.tag = 1
        lastNameTextField.delegate = self
        view.addSubview(lastNameTextField)
    }
    
    func addEmailTextField() {
        let emailTextFieldFrame = CGRect(x: 20, y: 520, width: 380, height: 32)
        emailTextField.frame = emailTextFieldFrame
        emailTextField.placeholder = "Введите имейл"
        emailTextField.keyboardType = .emailAddress
        emailTextField.borderStyle = UITextField.BorderStyle.roundedRect
        emailTextField.tag = 2
        emailTextField.delegate = self
        view.addSubview(emailTextField)
    }
    
    func addPasswordTextField() {
        let passwordTextFieldFrame = CGRect(x: 20, y: 580, width: 380, height: 32)
        passwordTextField.frame = passwordTextFieldFrame
        passwordTextField.placeholder = "Введите пароль"
        passwordTextField.keyboardType = .default
        passwordTextField.borderStyle = UITextField.BorderStyle.roundedRect
        passwordTextField.tag = 3
        passwordTextField.delegate = self
        view.addSubview(passwordTextField)
    }
    
    //    acceptButtonPressed
    @objc func acceptButtonPressed(target: UIButton) {
        if target == acceptButton {
            let thirdViewController = storyboard?.instantiateViewController(withIdentifier: "ThirdViewController")
                thirdViewController?.modalPresentationStyle = .fullScreen
                present(thirdViewController!, animated: true, completion: nil)
        }
    }
}


extension SecondViewController: UITextFieldDelegate {
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool { return true }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField.tag == 0 {
            lastNameTextField.becomeFirstResponder()
        }
        if textField.tag == 1 {
            emailTextField.becomeFirstResponder()
        }
        if textField.tag == 2 {
            passwordTextField.becomeFirstResponder()
        }
        if textField.tag == 3 {
            passwordTextField.resignFirstResponder()
        }
        return true
    }
    
}


