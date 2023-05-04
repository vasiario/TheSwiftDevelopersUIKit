//
//  SecondViewController.swift
//  10lesonNavigationViewControllerApp
//
//  Created by vasiario on 03.05.2023.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var buttonSushi: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        
        let backButton = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        navigationItem.backBarButtonItem = backButton
      
    }
}
