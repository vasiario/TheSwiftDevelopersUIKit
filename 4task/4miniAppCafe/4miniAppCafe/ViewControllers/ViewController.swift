//
//  ViewController.swift
//  4miniAppCafe
//
//  Created by vasiario on 18.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let signInLabel = UILabel()
    let emailLabel = UILabel()
    let enterEmailTextfield = UITextField()
    let passwordLabel = UILabel()
    let enterpasswordTextfield = UITextField()
    let signInbutton = UIButton()
    let hintLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        MARK: - signInPicture
        let imageViewGarlic = UIImageView(frame: CGRect(x: 164, y: 600, width: 70, height: 70))
        let imageGarlic = UIImage(named: "garlicPicture.png")
        imageViewGarlic.image = imageGarlic
        view.addSubview(imageViewGarlic)
        
        //        MARK: - signInPicture
        let imageView = UIImageView(frame: CGRect(x: 50, y: 170, width: 40, height: 40))
        let image = UIImage(named: "signInPicture.png")
        imageView.image = image
        view.addSubview(imageView)
        
        //        MARK: - signInLabel
        signInLabel.text = "Sign in"
        signInLabel.frame = CGRect(x: 50, y: 200, width: 100, height: 100)
        signInLabel.textColor = .red
        signInLabel.font = .boldSystemFont(ofSize: 30)
        view.addSubview(signInLabel)
        
        //        MARK: - emailLabel
        emailLabel.text = "Email"
        emailLabel.frame = CGRect(x: 50, y: 250, width: 100, height: 100)
        emailLabel.font = .boldSystemFont(ofSize: 15)
        emailLabel.textColor = .black
        view.addSubview(emailLabel)
        
        //        MARK: - enterEmailTextfield
        enterEmailTextfield.borderStyle = .roundedRect
        enterEmailTextfield.frame = CGRect(x: 50, y: 320, width: 280, height: 40)
        view.addSubview(enterEmailTextfield)
        
        //        MARK: - passwordLabel
        passwordLabel.text = "Password"
        passwordLabel.frame = CGRect(x: 50, y: 330, width: 100, height: 100)
        passwordLabel.font = .boldSystemFont(ofSize: 15)
        passwordLabel.textColor = .black
        view.addSubview(passwordLabel)
        //        MARK: - enterpasswordTextfield
        enterpasswordTextfield.borderStyle = .roundedRect
        enterpasswordTextfield.isSecureTextEntry = true
        enterpasswordTextfield.frame = CGRect(x: 50, y: 400, width: 280, height: 40)
        view.addSubview(enterpasswordTextfield)
        
        //        MARK: - signInbutton
        signInbutton.frame = CGRect(x: 64, y: 500, width: 260, height: 60)
        signInbutton.backgroundColor = .red
        signInbutton.layer.cornerRadius = 30
        signInbutton.setTitle("Войти", for: .normal)
        signInbutton.setTitleColor(.white, for: .normal)
        view.addSubview(signInbutton)
        signInbutton.addTarget(self, action: #selector(signInbuttonPressed), for: .touchUpInside)
        
        //        MARK: - hintLabel
        hintLabel.text = "Подсказка Login - 123@mail.ru Password - 123"
        hintLabel.frame = CGRect(x: 50, y: 400, width: 300, height: 100)
        hintLabel.font = .boldSystemFont(ofSize: 10)
        hintLabel.textColor = .black
        view.addSubview(hintLabel)
    }
    
    @objc func signInbuttonPressed() {
        //       login and password check
        if enterEmailTextfield.text != "123@mail.ru" ||  enterpasswordTextfield.text != "123" { autorizationAlert(title: "Ошибка", message: "Неверный логин или пароль", preferredStyle: .alert)
        }
        
        //        using secondViewController
        let secondViewController = storyboard?.instantiateViewController(withIdentifier: "SecondViewController")
        navigationController?.pushViewController(secondViewController!, animated: true)
    }
    
    //        allert after autorization go to next View
    func autorizationAlert(title: String, message: String, preferredStyle: UIAlertController.Style) {
        let alertAutorization = UIAlertController(title: title, message: message, preferredStyle: preferredStyle)
        let actionFistAllertController = UIAlertAction(title: "Попробовать снова", style: .default) { action in
        }
        alertAutorization.addAction(actionFistAllertController)
        self.present(alertAutorization, animated: true)
    }
    
}
