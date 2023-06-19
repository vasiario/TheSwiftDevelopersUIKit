//
//  ViewController.swift
//  12lessonUILabelApp
//
//  Created by vasiario on 09.05.2023.
//

import UIKit

class ViewController: UIViewController {
    var centralLabel = UILabel()
    var pickerColor = UIPickerView()
    var pickerNumberOfLines = UIPickerView()
    let colors = [UIColor.black, UIColor.red, UIColor.blue, UIColor.green]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rightNavigationButtonPressed()
        addCentralLabel()
        addSlider()
        addPickerColor()
        addPickernumberOfLines()
        
    }
    
    //    MARK: Methods
    //rightNavigationButton
    func rightNavigationButtonPressed() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addTextNavigationButton))
    }
    
    @objc func addTextNavigationButton() {
        let alertEnterText = UIAlertController(title: nil, message: "Обработчик текста", preferredStyle: .alert)
        alertEnterText.addTextField(configurationHandler: { (textField) in
            textField.placeholder = "Введите текст"
        })
        
        let alertEnterTextAction = UIAlertAction(title: "Ok", style: .default) {_ in
            if let textField = alertEnterText.textFields?.first {
                print("Введенный текст: \(textField.text ?? "")")
                self.centralLabel.text = textField.text ?? ""
                self.centralLabel.sizeToFit()
                self.centralLabel.adjustsFontSizeToFitWidth = true
            }
        }
        alertEnterText.addAction(alertEnterTextAction)
        present(alertEnterText, animated: true)
    }
    
    //addCentralLabel
    func addCentralLabel() {
        let labelFrame = CGRect(x: 0, y: 0, width: 370, height: 100)
        centralLabel.frame = labelFrame
        centralLabel.center = view.center
        centralLabel.text = "Нажмите на + и введите текст"
        centralLabel.lineBreakMode = .byWordWrapping
        centralLabel.numberOfLines = 0
        centralLabel.textAlignment = .center
        centralLabel.font = UIFont.boldSystemFont(ofSize: 20)
        centralLabel.layer.borderColor = UIColor.black.cgColor
        centralLabel.layer.borderWidth = 2
        centralLabel.shadowColor = .gray
        centralLabel.shadowOffset = CGSize(width: 3, height: 3)
        
        view.addSubview(centralLabel)
    }
    
    //addSlider
    func addSlider() {
        let slider = UISlider(frame: CGRect(x: 40, y: 600, width: 300, height: 20))
        slider.minimumValue = 1
        slider.maximumValue = 100
        slider.value = 80
        slider.addTarget(self, action: #selector(sliderChanged), for: .valueChanged)
        view.addSubview(slider)
    }
    
    @objc func sliderChanged(sender: UISlider) {
        guard let slider = sender as? UISlider else { return }
        centralLabel.font = UIFont.boldSystemFont(ofSize: CGFloat(slider.value))
    }
    
    //    addPickerColor
    func addPickerColor() {
        pickerColor = UIPickerView(frame: CGRect(x: 10, y: 650, width: 170, height: 100.0))
        view.addSubview(pickerColor)
        pickerColor.tag = 0
        
        pickerColor.delegate = self
        pickerColor.dataSource = self
    }
    
    //    addPickernumberOfLines
    func addPickernumberOfLines() {
        pickerNumberOfLines = UIPickerView(frame: CGRect(x: 200, y: 650, width: 170, height: 100.0))
        view.addSubview(pickerNumberOfLines)
        pickerNumberOfLines.tag = 1
        
        pickerNumberOfLines.delegate = self
        pickerNumberOfLines.dataSource = self
    }
}

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView.tag == 0 {
            let colorName = ColorName.allCases[row].rawValue
            return colorName
        } else {
            return "\(row)"
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView.tag == 0 {
            return centralLabel.textColor = colors[row]
        } else {
            return centralLabel.numberOfLines = row
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView.tag == 0 {
            return colors.count
        } else {
            return 10
        }
    }
}

enum ColorName: String, CaseIterable {
    case black = "Черный"
    case red = "Красный"
    case blue = "Синий"
    case green = "Зеленый"
}
