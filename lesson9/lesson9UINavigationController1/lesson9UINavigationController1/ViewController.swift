//
//  ViewController.swift
//  lesson9UINavigationController1
//
//  Created by vasiario on 03.05.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addImageTitleNavigation()
      addButtonLeftNavigation()
        addSwiftRigthNavigation()
    }


    
    
    func addButtonLeftNavigation() {
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(makeSomethink))
    }
    
    @objc func makeSomethink(param: UIBarButtonItem) {
        print("ok")
    }
    
    func addSwiftRigthNavigation() {
        let simpleSwitch = UISwitch()
        simpleSwitch.isOn = true
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: simpleSwitch)
        simpleSwitch.addTarget(self, action: #selector(switchIsChange), for: .valueChanged)
    }
    
    @objc func switchIsChange(param: UISwitch) {
        if param.isOn {
            print("1")
        } else {
            print("2")
        }
    }
}

extension ViewController {
    //    MARK: - Method
    func addImageTitleNavigation() {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        let view = UIImage(named: "heart")
        imageView.image = view
        imageView.contentMode = .scaleAspectFit
        navigationItem.titleView = imageView
    }
}

