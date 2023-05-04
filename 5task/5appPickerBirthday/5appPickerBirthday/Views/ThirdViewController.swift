//
//  ThirdViewController.swift
//  5appPickerBirthday
//
//  Created by vasiario on 20.04.2023.
//

import UIKit

class ThirdViewController: UIViewController {
    
    let datePicker = UIDatePicker()
    let agePicker = UIPickerView()
    let genderPicker = UIPickerView()
    
    let gender = ["Женский", "Мужской"]
    
    @IBOutlet weak var dateTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var genderTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        //datePicker
        datePicker.preferredDatePickerStyle = .wheels
        datePicker.datePickerMode = .date
        dateTextField.inputView = datePicker
        
//        datePicker.addTarget(self, action: #selector(datePickerChange), for: .valueChanged)

        //agePicker
        agePicker.dataSource = self
        agePicker.delegate = self
        ageTextField.inputView = agePicker
        
        //genderPicker
        genderPicker.dataSource = self
        genderPicker.delegate = self
        genderTextField.inputView = genderPicker
        
//        indeces
        datePicker.tag = 0
        genderPicker.tag = 1
    }
    
    @objc func doneDateAction() {
//       format
        let formater = DateFormatter()
        formater.dateStyle = .long
        formater.timeStyle = .none
        formater.locale = .init(identifier: "Russian")
        
        dateTextField.text = formater.string(from: datePicker.date)
        view.endEditing(true)
    }
}

//agePicker
extension ThirdViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch pickerView.tag {
        case 0: return 100
        case 1: return gender.count
        default:
            return 0
        }
    }
}
extension ThirdViewController: UIPickerViewDelegate {
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch pickerView.tag {
        case 0: return String(row)
        case 1: return gender[row]
        default:
            return ""
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch pickerView.tag {
        case 0: ageTextField.text = String(row)
        case 1: genderTextField.text = gender[row]
        default:
            return;
    }
    
//    @objc func datePickerChange(paramDatePicker: UIDatePicker) {
//        dateTextField.text = "\(paramDatePicker.date)"
    }
    
}
