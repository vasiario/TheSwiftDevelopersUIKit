//
//  ThirdViewController.swift
//  4miniAppCafe
//
//  Created by vasiario on 18.04.2023.
//

import UIKit

final class ThirdViewController: UIViewController {
    
    let topLabelNameLabel = UILabel()
    let orderNameLabel = UILabel()
    let dishDicriptionLabel = UILabel()
    let priceLabel = UILabel()
    let secondOrderNameLabel = UILabel()
    let secondDishDicriptionLabel = UILabel()
    let secondPriceLabel = UILabel()
    let buildLabel = UILabel()
    let payButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        MARK: - topLabelNameLabel
        topLabelNameLabel.text = "Чек"
        topLabelNameLabel.font = .boldSystemFont(ofSize: 40)
        topLabelNameLabel.frame = CGRect(x: 160, y: 30, width: 100, height: 100)
        view.addSubview(topLabelNameLabel)
        
        //        MARK: - orderNameLabel
        orderNameLabel.text = "1. Cтейк Рибай (Medium)"
        orderNameLabel.font = .boldSystemFont(ofSize: 24)
        orderNameLabel.frame = CGRect(x: 20, y: 200, width: 300, height: 50)
        view.addSubview(orderNameLabel)
        
        //        MARK: - dishDicriptionLabel
        dishDicriptionLabel.text = "Black Angus 300 гр."
        dishDicriptionLabel.font = .boldSystemFont(ofSize: 16)
        dishDicriptionLabel.textColor = .systemGray
        dishDicriptionLabel.frame = CGRect(x: 22, y: 226, width: 300, height: 50)
        view.addSubview(dishDicriptionLabel)
        
        //        MARK: - priceLabel
        priceLabel.text = "990.00"
        priceLabel.font = .boldSystemFont(ofSize: 14)
        priceLabel.textColor = .systemGray
        priceLabel.frame = CGRect(x: 300, y: 240, width: 100, height: 50)
        view.addSubview(priceLabel)
        
        //        MARK: - secondOrderNameLabel
        secondOrderNameLabel.text = "2. Вино красное Shiraz (150 мг)"
        secondOrderNameLabel.font = .boldSystemFont(ofSize: 24)
        secondOrderNameLabel.frame = CGRect(x: 20, y: 300, width: 400, height: 100)
        view.addSubview(secondOrderNameLabel)
        
        //        MARK: - secondDishDicriptionLabel
        secondDishDicriptionLabel.text = "Вино Penfolds Bin 28 Kalimna Shiraz, 2019 г."
        secondDishDicriptionLabel.font = .boldSystemFont(ofSize: 16)
        secondDishDicriptionLabel.textColor = .systemGray
        secondDishDicriptionLabel.frame = CGRect(x: 22, y: 350, width: 400, height: 50)
        view.addSubview(secondDishDicriptionLabel)
        
        //        MARK: - secondPriceLabel
        secondPriceLabel.text = "1500.00"
        secondPriceLabel.font = .boldSystemFont(ofSize: 14)
        secondPriceLabel.textColor = .systemGray
        secondPriceLabel.frame = CGRect(x: 300, y: 380, width: 100, height: 50)
        view.addSubview(secondPriceLabel)
        
        //        MARK: - buildLabel
        buildLabel.text = "Итого 2490.00"
        buildLabel.font = .boldSystemFont(ofSize: 16)
        buildLabel.textColor = .systemGray
        buildLabel.frame = CGRect(x: 140, y: 700, width: 120, height: 50)
        view.addSubview(buildLabel)
        
        //        MARK: - buildButton
        payButton.setTitle("Оплатить", for: .normal)
        payButton.backgroundColor = .red
        payButton.frame = CGRect(x: 100, y: 740, width: 200, height: 60)
        payButton.layer.cornerRadius = 30
        view.addSubview(payButton)
        payButton.addTarget(self, action: #selector(payButtonPressed), for: .touchUpInside)
    }
    
    @objc func payButtonPressed() {
        let alertPay = UIAlertController(title: "Оплачено", message: "", preferredStyle: .alert)
        let actionFirstView = UIAlertAction(title: "OK", style: .default) { action in
            let firstViewController = self.storyboard?.instantiateViewController(withIdentifier: "ViewController")
            self.navigationController?.pushViewController(firstViewController!, animated: true)
        }
        
        alertPay.addAction(actionFirstView)
        self.present(alertPay, animated: true)
    }
    
}
