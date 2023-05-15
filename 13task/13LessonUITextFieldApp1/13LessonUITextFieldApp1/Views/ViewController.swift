//
//  ViewController.swift
//  13LessonUITextFieldApp1
//
//  Created by vasiario on 12.05.2023.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet weak var loginTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.loginTextField.isEnabled = false
        self.passwordTextField.isEnabled = false
    }

    @IBAction func registationButtonPressed(_ sender: Any) {
        print("pressed")
        let secondViewController = storyboard?.instantiateViewController(withIdentifier: "SecondViewController")
        self.navigationController?.pushViewController(secondViewController!, animated: true)
    }
    
}

