//
//  ThirdViewController.swift
//  13LessonUITextFieldApp1
//
//  Created by vasiario on 12.05.2023.
//

import UIKit

final class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        setupNavigationBar()
    }
    
    func setupNavigationBar() {
        let backButton = UIBarButtonItem(image: UIImage(systemName: "chevron.left"), style: .plain, target: self, action: #selector(goBack))
        navigationItem.leftBarButtonItem = backButton
    }
    
    @objc func goBack() {
        navigationController?.popViewController(animated: true)
    }
}
