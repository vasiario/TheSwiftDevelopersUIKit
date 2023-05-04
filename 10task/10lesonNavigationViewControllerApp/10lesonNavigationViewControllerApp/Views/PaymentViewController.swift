//
//  PaymentViewController.swift
//  10lesonNavigationViewControllerApp
//
//  Created by vasiario on 04.05.2023.
//

import UIKit

class PaymentViewController: UIViewController {
    
    @IBOutlet weak var cardPaySwitch: UISwitch!
    @IBOutlet weak var cashPaySwitch: UISwitch!
    @IBOutlet weak var paymentButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cardPaySwitch.addTarget(self, action: #selector(cardPaySwitchChange), for: .valueChanged)
        
        cashPaySwitch.addTarget(self, action: #selector(cashPaySwitchChange), for: .valueChanged)
    }
    
    
    @objc func cardPaySwitchChange(param: UISwitch) {
        if cardPaySwitch.isOn {
            cashPaySwitch.isOn = false
            paymentButton.backgroundColor = .black
            paymentButton.isEnabled = true
        }
    }
    
    @objc func cashPaySwitchChange(param: UISwitch) {
        if cashPaySwitch.isOn {
            cardPaySwitch.isOn = false
            paymentButton.backgroundColor = .white
            paymentButton.isEnabled = false
        }
    }
    
    
    @IBAction func paymentButtonPressed(_ sender: Any) {
        let alertPay = UIAlertController(title: nil, message: "Оплата успешна", preferredStyle: .alert)
        let actionPay = UIAlertAction(title: "Ok", style: .default) {(action) in
            
//           необходимо вернуться к SecondViewController
            
        }
        alertPay.addAction(actionPay)
        present(alertPay, animated: true)
    }
}
