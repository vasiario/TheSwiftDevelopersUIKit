//
//  SecondViewController.swift
//  4miniAppCafe
//
//  Created by vasiario on 18.04.2023.
//

import UIKit

class SecondViewController: UIViewController {
  
    let topLabelName = UILabel()
    let personNamelabel = UILabel()
    let personNameTextField = UITextField()
    let guestNumberlabel = UILabel()
    let guestNumberTextField = UITextField()
    let labelNumberTable = UILabel()
    let labelNumberTextField = UITextField()
    let reservedTableLabel = UILabel()
    let prepaymentLabel = UILabel()
    let vipRoomLabel = UILabel()
    let switchOne = UISwitch()
    let switchTwo = UISwitch()
    let switchThree = UISwitch()
    let makeCheckButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        MARK: - signInbutton
        makeCheckButton.frame = CGRect(x: 0, y: 700, width: 400, height: 60)
        makeCheckButton.backgroundColor = .systemRed
        makeCheckButton.setTitle("Выставить счет", for: .normal)
        makeCheckButton.setTitleColor(.white, for: .normal)
        view.addSubview(makeCheckButton)
        makeCheckButton.addTarget(self, action: #selector(makeCheckButtonPressed), for: .touchUpInside)
        
        //        MARK: - signInPicture
        let imageView = UIImageView(frame: CGRect(x: 164, y: 110, width: 70, height: 70))
        let image = UIImage(named: "garlicPicture.png")
        imageView.image = image
        view.addSubview(imageView)
        
        //MARK: - topLabelName = UILabel()
        topLabelName.text = "Чеснок"
        topLabelName.frame = CGRect(x: 136, y: 30, width: 400, height: 100)
        topLabelName.textColor = .systemGreen
        topLabelName.font = .boldSystemFont(ofSize: 35)
        view.addSubview(topLabelName)
        
        //MARK: - personNamelabel = UILabel()
        personNamelabel.text = "Ваши ФИО"
        personNamelabel.frame = CGRect(x: 30, y: 150, width: 400, height: 100)
        personNamelabel.textColor = .systemRed
        personNamelabel.font = .boldSystemFont(ofSize: 14)
        view.addSubview(personNamelabel)
        
        //MARK: - personNameTextField = UITextField()
        personNameTextField.borderStyle = .roundedRect
        personNameTextField.frame = CGRect(x: 30, y: 220, width: 330, height: 40)
        view.addSubview(personNameTextField)
        
        //MARK: - guestNumberlabel = UILabel()
        guestNumberlabel.text = "Количество гостей"
        guestNumberlabel.frame = CGRect(x: 30, y: 250, width: 400, height: 100)
        guestNumberlabel.textColor = .systemRed
        guestNumberlabel.font = .boldSystemFont(ofSize: 14)
        view.addSubview(guestNumberlabel)
        
        //MARK: - guestNumberTextField = UITextField()
        guestNumberTextField.borderStyle = .roundedRect
        guestNumberTextField.frame = CGRect(x: 30, y: 320, width: 330, height: 40)
        view.addSubview(guestNumberTextField)
        
        //MARK: - labelNumberTable = UILabel()
        labelNumberTable.text = "Номер стола"
        labelNumberTable.frame = CGRect(x: 30, y: 350, width: 400, height: 100)
        labelNumberTable.textColor = .systemRed
        labelNumberTable.font = .boldSystemFont(ofSize: 14)
        view.addSubview(labelNumberTable)
        
        //MARK: - labelNumberTextField = UITextField()
        labelNumberTextField.borderStyle = .roundedRect
        labelNumberTextField.frame = CGRect(x: 30, y: 420, width: 330, height: 40)
        view.addSubview(labelNumberTextField)
        
        //MARK: - reservedTableLabel
        reservedTableLabel.text = "Бронировали стол?"
        reservedTableLabel.frame = CGRect(x: 50, y: 450, width: 400, height: 100)
        reservedTableLabel.textColor = .systemRed
        reservedTableLabel.font = .boldSystemFont(ofSize: 14)
        view.addSubview(reservedTableLabel)
        
        //MARK: - prepaymentLabel
        prepaymentLabel.text = "Предоплата?"
        prepaymentLabel.frame = CGRect(x: 50, y: 500, width: 400, height: 100)
        prepaymentLabel.textColor = .systemRed
        prepaymentLabel.font = .boldSystemFont(ofSize: 14)
        view.addSubview(prepaymentLabel)
    
        //MARK: - vipRoomLabel
        vipRoomLabel.text = "Вип-комната?"
        vipRoomLabel.frame = CGRect(x: 50, y: 550, width: 400, height: 100)
        vipRoomLabel.textColor = .systemRed
        vipRoomLabel.font = .boldSystemFont(ofSize: 14)
        view.addSubview(vipRoomLabel)
        
        //MARK: - switchOne
        switchOne.frame = CGRect(x: 240, y: 484, width: 10, height: 10)
        view.addSubview(switchOne)
        
        //MARK: - switchTwo
        switchTwo.frame = CGRect(x: 240, y: 536, width: 10, height: 10)
        view.addSubview(switchTwo)
        
        //MARK: - switchThree
        switchThree.frame = CGRect(x: 240, y: 586, width: 10, height: 10)
        view.addSubview(switchThree)
    }
    
    @objc func makeCheckButtonPressed() {
        
//        using thirdViewController
        let thirdViewController = storyboard?.instantiateViewController(withIdentifier: "ThirdViewController")
        navigationController?.pushViewController(thirdViewController!, animated: true)
    }

}

