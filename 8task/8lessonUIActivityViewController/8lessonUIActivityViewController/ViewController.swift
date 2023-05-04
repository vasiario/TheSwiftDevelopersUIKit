//
//  ViewController.swift
//  8lessonUIActivityViewController
//
//  Created by vasiario on 02.05.2023.
//

import UIKit

final class ViewController: UIViewController, UITextFieldDelegate {
var centralButton = UIButton()
    var textField = UITextField()
    var topPicker = UIPickerView()
    var activityViewController: UIActivityViewController? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
     addTextField()
        addButton()
        
    }

//    MARK: - Method
    func addTextField() {
        textField.frame = CGRect(x: 0, y: 0, width: 280, height: 30)
        textField.center = view.center
        textField.borderStyle = .roundedRect
        textField.placeholder = "Enter text to share"
        textField.delegate = self
        view.addSubview(textField)
    }
    
        func addButton() {
            centralButton = UIButton(type: .roundedRect)
            centralButton.frame = CGRect(x: 50, y: 350, width: 280, height: 44)
            centralButton.setTitle("Расшарить", for: .normal)
            centralButton.addTarget(self, action: #selector(handleShare), for: .touchUpInside)
            view.addSubview(centralButton)
        }
    

    @objc func handleShare(paramSender: Any) {
        let text = textField.text
        
        if text?.isEmpty ?? true {
            let message = "Пожалуйста, введите значение"
            let allertController = UIAlertController(title: nil, message: message, preferredStyle: .alert)
            let allertAction = UIAlertAction(title: "ok", style: .cancel)
            allertController.addAction(allertAction)
            present(allertController, animated: true)
        } else {
            print("ok")
        }
        
        activityViewController = UIActivityViewController(activityItems: [textField.text ?? "nil"], applicationActivities: nil)
        present(activityViewController!, animated: true)
    }
    
//    MARK: - UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
}

