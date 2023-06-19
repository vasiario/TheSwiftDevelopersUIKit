//
//  MyChoiseViewController.swift
//  16and17lessonUIImageViewAndUIScrollView
//
//  Created by vasiario on 02.06.2023.
//

import UIKit
import WebKit

class MyChoiseViewController: UIViewController {
  
  private var nameLabel = UILabel()
  private var priceLabel = UILabel()
  private var topScrollView = UIScrollView()
  private var discriptionLabel = UILabel()
  private var compatibilityLabel = UILabel()
  private var addToCartButton = UIButton()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    addNameLabel()
    addPrice()
    addDiscriptionLabel()
    addImageViewButton()
    setTopScrollView()
    addCompatibilityLabel()
    addToCartButtonFunc()
    addbottomImageLabel()
    addbottomAcceptLabel()
  }
  
  //  MARK: - Setup
  fileprivate  func addNameLabel() {
    nameLabel = UILabel(frame: CGRect(x: 158, y: 100, width: view.bounds.width, height: 30))
    nameLabel.text = "AirPods Pro"
    nameLabel.textColor = .white
    nameLabel.font = UIFont.systemFont(ofSize: 20)
    view.addSubview(nameLabel)
  }
  
  fileprivate func addPrice() {
    priceLabel = UILabel(frame: CGRect(x: 176, y: 130, width: view.bounds.width, height: 30))
    priceLabel.text = "249.00 $"
    priceLabel.textColor = .gray
    priceLabel.font = UIFont.systemFont(ofSize: 16)
    view.addSubview(priceLabel)
  }
  
  fileprivate func addDiscriptionLabel() {
    discriptionLabel = UILabel(frame: CGRect(x: 128, y: 490, width: view.bounds.width, height: 30))
    discriptionLabel.text = "наушники Airpods Pro 2020"
    discriptionLabel.textColor = .gray
    discriptionLabel.font = UIFont.systemFont(ofSize: 13)
    view.addSubview(discriptionLabel)
  }
  
  fileprivate func addCompatibilityLabel() {
    compatibilityLabel = UILabel(frame: CGRect(x: 80, y: 640, width: view.bounds.width, height: 30))
    compatibilityLabel.font = UIFont.systemFont(ofSize: 13)
    view.addSubview(compatibilityLabel)
    
    let text = "Совместимо с IPhone 12pro Max - Василий"
    let attributedText = NSMutableAttributedString(string: text)
    
    // Настройка цвета для строки "Совместимо с"
    let range1 = (text as NSString).range(of: "Совместимо с")
    attributedText.addAttribute(.foregroundColor, value: UIColor.gray, range: range1)
    
    // Настройка цвета для строки "IPhone 12pro Max - Василий"
    let range2 = (text as NSString).range(of: "IPhone 12pro Max - Василий")
    attributedText.addAttribute(.foregroundColor, value: UIColor.systemBlue, range: range2)
    
    compatibilityLabel.attributedText = attributedText
  }
  
  fileprivate func addToCartButtonFunc() {
    addToCartButton.frame = CGRect(x: 10, y: 700, width: view.bounds.width - 20, height: 40)
    addToCartButton.setTitle("Добавить в корзину", for: .normal)
    addToCartButton.setTitleColor(.white, for: .normal)
    addToCartButton.setTitleColor(.gray, for: .highlighted)
    addToCartButton.backgroundColor = .systemBlue
    addToCartButton.layer.cornerRadius = 10
    view.addSubview(addToCartButton)
  }
  
  //MARK: -  buttonImage
  fileprivate func addImageViewButton() {
    let buttonImage = UIImage(named: "buttons")
    let buttonImageView = UIImageView(image: buttonImage)
    buttonImageView.frame = CGRect(x: 150, y: 530, width: 130, height: 130)
    buttonImageView.contentMode = .scaleAspectFit
    view.addSubview(buttonImageView)
  }
  
  //MARK: -  bottomAcceptLabel
  fileprivate func addbottomAcceptLabel() {
    let buttonImage = UIImage(named: "acceptLabel")
    let bottomAcceptLabel = UIImageView(image: buttonImage)
    bottomAcceptLabel.frame = CGRect(x: 34, y: 630, width: 50, height: 50)
    bottomAcceptLabel.contentMode = .scaleAspectFit
    view.addSubview(bottomAcceptLabel)
  }
  
  //MARK: -  bottomImageLabel
  fileprivate func addbottomImageLabel() {
    let buttonImage = UIImage(named: "bottomLabel")
    let bottomImageLabel = UIImageView(image: buttonImage)
    bottomImageLabel.frame = CGRect(x: 10, y: 780, width: view.bounds.width - 20, height: 50)
    bottomImageLabel.contentMode = .scaleAspectFill
    view.addSubview(bottomImageLabel)
  }
  
  //MARK: - add func topScrollView
  fileprivate func setTopScrollView() {
    let scrollViewRect = CGRect(x: 0, y: 180, width: view.bounds.width, height: 300)
    
    topScrollView.frame = scrollViewRect
    topScrollView.isPagingEnabled = true
    topScrollView.contentSize = CGSize(width: scrollViewRect.width * 3, height: scrollViewRect.height)
    topScrollView.showsHorizontalScrollIndicator = true
    topScrollView.showsVerticalScrollIndicator = true
    topScrollView.indicatorStyle = .white
    view.addSubview(topScrollView)
    
    /// add Image
    let airpodsImage1 = UIImage(named: "airpodsPro")
    let airpodsImage2 = UIImage(named: "airpodsPro2")
    let airpodsImage3 = UIImage(named: "airpodsPro3")
    
    ///    create first Image
    var imageViewRect = CGRect(x: 0, y: 0, width: topScrollView.bounds.width, height: topScrollView.bounds.height)
    let firstImage = addImageViewScroll(paramImage: airpodsImage1!, paramFrame: imageViewRect)
    topScrollView.addSubview(firstImage)
    let tapGesture1 = UITapGestureRecognizer(target: self, action: #selector(imageTapped(_:)))
    firstImage.isUserInteractionEnabled = true
    firstImage.addGestureRecognizer(tapGesture1)
    firstImage.tag = 1
    
    ///    create second Image
    imageViewRect.origin.x += scrollViewRect.width
    let secondImage = addImageViewScroll(paramImage: airpodsImage2!, paramFrame: imageViewRect)
    topScrollView.addSubview(secondImage)
    let tapGesture2 = UITapGestureRecognizer(target: self, action: #selector(imageTapped(_:)))
    secondImage.isUserInteractionEnabled = true
    secondImage.addGestureRecognizer(tapGesture2)
    secondImage.tag = 2
    
    ///    create third Image
    imageViewRect.origin.x += scrollViewRect.width
    let thirdImage = addImageViewScroll(paramImage: airpodsImage3!, paramFrame: imageViewRect)
    topScrollView.addSubview(thirdImage)
    let tapGesture3 = UITapGestureRecognizer(target: self, action: #selector(imageTapped(_:)))
    thirdImage.isUserInteractionEnabled = true
    thirdImage.addGestureRecognizer(tapGesture3)
    thirdImage.tag = 3
  }
  
  //  MARK: - add Image View for Scroll
  fileprivate func addImageViewScroll(paramImage: UIImage, paramFrame: CGRect) -> UIImageView {
    let result = UIImageView(frame: paramFrame)
    result.contentMode = .scaleAspectFit
    result.image = paramImage
    return result
  }
  
  //  MARK: - imageTapped
  @objc func imageTapped(_ gesture: UITapGestureRecognizer) {
    if let imageView = gesture.view as? UIImageView {
      // Handle the tap on the image view
      switch imageView.tag {
      case 1:
        // AirPods Pro image 1 tapped
        callWkWebView()
      case 2:
        // AirPods Pro image 2 tapped
        callWkWebView()
      case 3:
        // AirPods Pro image 3 tapped
        callWkWebView()
      default:
        break
      }
    }
  }
  
  //  MARK: - callWkWebView
  func callWkWebView() {
    let webViewController = WebViewController()
    let navigationController = UINavigationController(rootViewController: webViewController)
    present(navigationController, animated: true, completion: nil)
  }
}
