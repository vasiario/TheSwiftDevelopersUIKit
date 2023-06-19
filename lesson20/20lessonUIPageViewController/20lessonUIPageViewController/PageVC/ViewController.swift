//
//  ViewController.swift
//  20lessonUIPageViewController
//
//  Created by vasiario on 09.06.2023.
//

import UIKit

class ViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let firstViewController = UIViewController()
        firstViewController.title = "First"

        let secondViewController = UIViewController()
        secondViewController.title = "Second"

        // Добавление контроллеров в таб-бар
        self.viewControllers = [firstViewController, secondViewController]
    }
}
