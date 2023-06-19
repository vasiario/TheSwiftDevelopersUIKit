//
//  WebViewController.swift
//  16and17lessonUIImageViewAndUIScrollView
//
//  Created by vasiario on 05.06.2023.
//

import UIKit
import WebKit

class WebViewController: UIViewController {
  
  private var wkWebView: WKWebView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    wkWebView = WKWebView()
    wkWebView.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(wkWebView)
    
    NSLayoutConstraint.activate([
      wkWebView.topAnchor.constraint(equalTo: view.topAnchor),
      wkWebView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      wkWebView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
      wkWebView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
    ])
    
    let url = URL(string: "https://www.apple.com/airpods-pro")
    let request = URLRequest(url: url!)
    wkWebView.load(request)
  }
  
  convenience init() {
    self.init(nibName: nil, bundle: nil)
    modalPresentationStyle = .fullScreen
    navigationController?.navigationBar.prefersLargeTitles = false
    navigationItem.largeTitleDisplayMode = .always
  }
}
