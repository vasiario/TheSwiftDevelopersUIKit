//
//  ViewController.swift
//  13LessonUITextFieldApp1
//
//  Created by vasiario on 12.05.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func registationButtonPressed(_ sender: Any) {
        print("pressed")
        let secondViewController = storyboard?.instantiateViewController(withIdentifier: "SecondViewController")
        self.navigationController?.pushViewController(secondViewController!, animated: true)
    }
    
}

