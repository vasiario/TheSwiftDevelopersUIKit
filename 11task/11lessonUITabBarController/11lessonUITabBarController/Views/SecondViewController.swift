//
//  secondViewController.swift
//  11lessonUITabBarController
//
//  Created by vasiario on 05.05.2023.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var firstAlarmLabel: UILabel!
    @IBOutlet weak var secondAlarmLabel: UILabel!
    @IBOutlet weak var thirdAlarmLabel: UILabel!
    @IBOutlet weak var fourthAlarmLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func firstSwitchAction(_ sender: UISwitch) {
        if sender.isOn == false {
            firstAlarmLabel.textColor = .systemGray
        } else {
            firstAlarmLabel.textColor = .white
        }
    }
    
    @IBAction func secondSwitchAction(_ sender: UISwitch) {
        if sender.isOn == false {
            secondAlarmLabel.textColor = .systemGray
        } else {
            secondAlarmLabel.textColor = .white
        }
    }
    
    @IBAction func thirdSwitchAction(_ sender: UISwitch) {
        if sender.isOn == false {
            thirdAlarmLabel.textColor = .systemGray
        } else {
            thirdAlarmLabel.textColor = .white
        }
    }
    
    @IBAction func fourthSwitchAction(_ sender: UISwitch) {
        if sender.isOn == false {
            fourthAlarmLabel.textColor = .systemGray
        } else {
            fourthAlarmLabel.textColor = .white
        }
    }
    
    
}
