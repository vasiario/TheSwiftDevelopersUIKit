//
//  SecondViewController.swift
//  8lessonUIActivityViewController
//
//  Created by vasiario on 02.05.2023.
//

import UIKit

class SecondViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    let data = ["one", "two", "activityView"]
    var picker = UIPickerView()
    var textField = UITextField()
    var activityViewController: UIActivityViewController?

    override func viewDidLoad() {
        super.viewDidLoad()
        picker.delegate = self
        picker.dataSource = self
        addTextField()
    }

    func addTextField() {
        textField = UITextField(frame: CGRect(x: 50, y: 100, width: 280, height: 44))
        textField.placeholder = "Выберите значение"
        textField.borderStyle = .roundedRect
        textField.inputView = picker
        view.addSubview(textField)
        
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        let doneButton = UIBarButtonItem(title: "Готово", style: .done, target: self, action: #selector(doneButtonTapped))
        toolbar.items = [doneButton]
        textField.inputAccessoryView = toolbar
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return data[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        textField.text = data[row]
        if row == 2 {
            activityViewController = UIActivityViewController(activityItems: [data[row]], applicationActivities: nil)
            present(activityViewController!, animated: true)
        }
    }
    
    @objc func doneButtonTapped() {
        textField.resignFirstResponder()
    }
    
    func addPickerButton() {
        let pickerButton = UIButton(type: .roundedRect)
        pickerButton.frame = CGRect(x: 50, y: 200, width: 280, height: 44)
        pickerButton.setTitle("Выбрать", for: .normal)
        pickerButton.addTarget(self, action: #selector(pickerButtonTapped), for: .touchUpInside)
        view.addSubview(pickerButton)
    }

    @objc func pickerButtonTapped() {
        let row = picker.selectedRow(inComponent: 0)
        textField.text = data[row]
        textField.resignFirstResponder()
    }
}
