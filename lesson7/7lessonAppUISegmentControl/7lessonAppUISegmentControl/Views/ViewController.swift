//
//  ViewController.swift
//  7lessonAppUISegmentControl
//
//  Created by vasiario on 01.05.2023.
//

import UIKit

final class ViewController: UIViewController {
    let buttonSecondView = UIButton()
    let emptyButtonOne = UIButton()
    let emptyButtonTwo = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addButtonSecondView()
        addEmptyButtonOne()
        addEmptyButtonTwo()
    }
    
    //MARK: - buttonSecondView
    func addButtonSecondView() {
        buttonSecondView.frame = CGRect(x: 70, y: 300, width: 300, height: 100)
        buttonSecondView.setTitle("Обувь", for: .normal)
        buttonSecondView.setTitleColor(.white, for: .normal)
        buttonSecondView.setTitleColor(.black, for: .highlighted)
        buttonSecondView.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: .medium)
        buttonSecondView.backgroundColor = .black
        view.addSubview(buttonSecondView)
        buttonSecondView.addTarget(self, action: #selector(nextViewButtonPressed), for: .touchUpInside)
    }
    
    //MARK: - emptyButtonOne
    func addEmptyButtonOne() {
        emptyButtonOne.frame = CGRect(x: 70, y: 420, width: 300, height: 100)
        emptyButtonOne.setTitle("Штаны", for: .normal)
        emptyButtonOne.setTitleColor(.white, for: .normal)
        emptyButtonOne.setTitleColor(.red, for: .highlighted)
        emptyButtonOne.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: .medium)
        emptyButtonOne.backgroundColor = .lightGray
        view.addSubview(emptyButtonOne)
    }
    
    //MARK: - emptyButtonTwo
    func addEmptyButtonTwo() {
        emptyButtonTwo.frame = CGRect(x: 70, y: 540, width: 300, height: 100)
        emptyButtonTwo.setTitle("Футболки", for: .normal)
        emptyButtonTwo.setTitleColor(.white, for: .normal)
        emptyButtonTwo.setTitleColor(.red, for: .highlighted)
        emptyButtonTwo.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: .medium)
        emptyButtonTwo.backgroundColor = .lightGray
        view.addSubview(emptyButtonTwo)
    }
    
    // func nextViewButtonPressed for buttonSecondView
    @objc func nextViewButtonPressed(target: UIButton) {
        print("pressed")
        if target == buttonSecondView {
            //        using secondViewController
            let secondViewController = storyboard?.instantiateViewController(withIdentifier: "SecondViewController")
            navigationController?.pushViewController(secondViewController!, animated: true)
        }
    }
}

