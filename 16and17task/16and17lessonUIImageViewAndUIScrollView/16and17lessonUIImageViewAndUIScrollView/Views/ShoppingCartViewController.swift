//
//  ShoppingCartViewController.swift
//  16and17lessonUIImageViewAndUIScrollView
//
//  Created by vasiario on 22.05.2023.
//

import UIKit

final class ShoppingCartViewController: UIViewController {
  
  private var centralTextLabel = UILabel()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    addCentralTextLabel()
  }
  
  fileprivate func addCentralTextLabel() {
    centralTextLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 100))
    centralTextLabel.center = view.center
    centralTextLabel.text = "В разработке"
    centralTextLabel.font = UIFont.systemFont(ofSize: 30)
    centralTextLabel.textColor = .white
    view.addSubview(centralTextLabel)
  }
}

