//
//  FourthViewController.swift
//  11lessonUITabBarController
//
//  Created by vasiario on 05.05.2023.
//

import UIKit

class FourthViewController: UIViewController {

    let hoursArray = Array(0...23)
    let minutesArray = Array(0...59)
    let secondsArray = Array(0...59)
    
    var pickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        pickerView = UIPickerView(frame: CGRect(x: 0, y: 150, width: view.frame.width, height: 216))
        pickerView.delegate = self
        pickerView.dataSource = self
        
        view.addSubview(pickerView)
    }
}

extension FourthViewController: UIPickerViewDelegate {

    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        let title = String(format: "%02d", row)
        var color: UIColor
        
        switch component {
        case 0:
            color = .white
        case 1:
            color = .white
        case 2:
            color = .white
        default:
            color = .black
        }
        
        let attributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: color,
            .font: UIFont.systemFont(ofSize: 20)
        ]
        
        let attributedString = NSAttributedString(string: title, attributes: attributes)
        return attributedString
    }
}

extension FourthViewController: UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch component {
        case 0:
            return hoursArray.count
        case 1:
            return minutesArray.count
        case 2:
            return secondsArray.count
        default:
            return 0
        }
    }
}
