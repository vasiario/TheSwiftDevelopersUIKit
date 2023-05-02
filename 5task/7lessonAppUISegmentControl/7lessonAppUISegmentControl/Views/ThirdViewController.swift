//
//  ThirdViewController.swift
//  7lessonAppUISegmentControl
//
//  Created by vasiario on 01.05.2023.
//

import UIKit

final class ThirdViewController: UIViewController {
    var choiceShouseSegmentContoller = UISegmentedControl()
    var menuArray = ["Тяги", "Подкрадули", "Бархатные тяги"]
    var imageViewCentral = UIImageView()
    let arrayImages = [UIImage(named: "firstShoes"),
                       UIImage(named: "secondShoes"),
                       UIImage(named: "thirdShoes"),]
    var labelChoiseShoes = UILabel()
    let labelTopCentralFirm = UILabel()
    let bottomButtonPay = UIButton()
    var shoppingBag = UIImageView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addChoiceShouseSegmentContoller()
        addImageCentral()
        addLabelChoiseShoes()
        addLabelTopCentralFirm()
        addButtonSecondView()
        addImageBag()
    }
    
    //MARK: -     addChoiceShouseSegmentContoller func
    func addChoiceShouseSegmentContoller() {
        choiceShouseSegmentContoller = UISegmentedControl(items: menuArray)
        choiceShouseSegmentContoller.frame = CGRect(x: 14, y: 600, width: 400, height: 40)
        view.addSubview(choiceShouseSegmentContoller)
        
        choiceShouseSegmentContoller.addTarget(self, action: #selector(selectedValue), for: .valueChanged)
    }
    
    @objc func selectedValue(target: UISegmentedControl) {
        if target == choiceShouseSegmentContoller {
            let segmentIndex = choiceShouseSegmentContoller.selectedSegmentIndex
            
            //            set image central segment
            imageViewCentral.image = arrayImages[segmentIndex]
            
            //            set label segment
            labelChoiseShoes.text = "Ваш выбор: \(target.titleForSegment(at: segmentIndex) ?? "")"
        }
    }
    
    //     MARK: - Add image Bag
    func addImageBag() {
        shoppingBag = UIImageView(frame: CGRect(x: 378, y: 70, width: 30, height: 30))
        let imageBag = UIImage(named: "shoppingBag")
        shoppingBag.image = imageBag
        view.addSubview(shoppingBag)
    }
    
    //     MARK: - Add image
    func addImageCentral() {
        imageViewCentral.image = arrayImages[0]
        imageViewCentral.contentMode = .scaleAspectFit
        imageViewCentral.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
        imageViewCentral.center = view.center
        view.addSubview(imageViewCentral)
    }
    
    //    MARK: - Add label addLabelChoiseShoes
    func addLabelChoiseShoes() {
        labelChoiseShoes.frame = CGRect(x: 10, y: 600, width: 400, height: 200)
        labelChoiseShoes.text = "Ваш выбор:"
        view.addSubview(labelChoiseShoes)
    }
    
//    MARK: - Add label labelTopCentralFirm
    func addLabelTopCentralFirm() {
        labelTopCentralFirm.frame = CGRect(x: 140, y: 200, width: 400, height: 200)
        labelTopCentralFirm.text = "Adidas"
        labelTopCentralFirm.font = .systemFont(ofSize: 50, weight: .medium)
        view.addSubview(labelTopCentralFirm)
    }
    
    
    //MARK: - bottomButtonPay
    func addButtonSecondView() {
        bottomButtonPay.frame = CGRect(x: 70, y: 800, width: 300, height: 60)
        bottomButtonPay.setTitle("Купить", for: .normal)
        bottomButtonPay.setTitleColor(.white, for: .normal)
        bottomButtonPay.setTitleColor(.black, for: .highlighted)
        bottomButtonPay.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: .medium)
        bottomButtonPay.backgroundColor = .black
        view.addSubview(bottomButtonPay)
        bottomButtonPay.addTarget(self, action: #selector(bottomButtonPayPressed), for: .touchUpInside)
    }
    
    // func nextViewButtonPressed for buttonSecondView
    @objc func bottomButtonPayPressed(target: UIButton) {
        
        if target == bottomButtonPay {
            // call allert
            let allertPay = UIAlertController(title: "Добавить в корзину?", message: "", preferredStyle: .alert)
            let allertPayAction = UIAlertAction(title: "Ок", style: .default)
            let allertPayAction2 = UIAlertAction(title: "Отменить", style: .default)
            allertPay.addAction(allertPayAction)
            allertPay.addAction(allertPayAction2)
            self.present(allertPay, animated: true)
            
        }
        
    }
}
