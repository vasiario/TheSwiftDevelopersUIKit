//
//  MyChoiseViewController.swift
//  16and17lessonUIImageViewAndUIScrollView
//
//  Created by vasiario on 02.06.2023.
//

import UIKit

class MyChoiseViewController: UIViewController {

  var nameLabel = UILabel()
  var priceLabel = UILabel()
  var topScrollView = UIScrollView()
  var discriptionLabel = UILabel()



  override func viewDidLoad() {
    super.viewDidLoad()

    addNameLabel()
    addPrice()
    addDiscriptionLabel()

    /// add Image
    let airpodsImage1 = UIImage(named: "airpodsPro")
    let airpodsImage2 = UIImage(named: "airpodsPro2")
    let airpodsImage3 = UIImage(named: "airpodsPro3")

    /// add scrollView
    let scrollViewRect = CGRect(x: 0, y: 180, width: view.bounds.width, height: 300)

    topScrollView.frame = scrollViewRect
    topScrollView.isPagingEnabled = true
    topScrollView.contentSize = CGSize(width: scrollViewRect.width * 3, height: scrollViewRect.height)
    topScrollView.showsHorizontalScrollIndicator = true
    topScrollView.showsVerticalScrollIndicator = true
    topScrollView.indicatorStyle = .white
    view.addSubview(topScrollView)

    //    create first Image
    var imageViewRect = CGRect(x: 0, y: 0, width: topScrollView.bounds.width, height: topScrollView.bounds.height)
    let firstImage = addImageView(paramImage: airpodsImage1!, paramFrame: imageViewRect)
    topScrollView.addSubview(firstImage)

    //    create second Image
    imageViewRect.origin.x += scrollViewRect.width
    let secondImage = addImageView(paramImage: airpodsImage2!, paramFrame: imageViewRect)
    topScrollView.addSubview(secondImage)

    //    create third Image
    imageViewRect.origin.x += scrollViewRect.width
    let thirdImage = addImageView(paramImage: airpodsImage3!, paramFrame: imageViewRect)
    topScrollView.addSubview(thirdImage)

//  buttonImage
    var buttonImage = UIImage(named: "buttons")
    var buttonImageView = UIImageView(image: buttonImage)
    buttonImageView.frame = CGRect(x: 150, y: 530, width: 130, height: 130)
    buttonImageView.contentMode = .scaleAspectFit
    view.addSubview(buttonImageView)

  }

  //  MARK: - Setup
  func addNameLabel() {
    nameLabel = UILabel(frame: CGRect(x: 158, y: 100, width: view.bounds.width, height: 30))
    nameLabel.text = "AirPods Pro"
    nameLabel.textColor = .white
    nameLabel.font = UIFont.systemFont(ofSize: 20)
    view.addSubview(nameLabel)
  }

  func addPrice() {
    priceLabel = UILabel(frame: CGRect(x: 176, y: 130, width: view.bounds.width, height: 30))
    priceLabel.text = "249.00 $"
    priceLabel.textColor = .gray
    priceLabel.font = UIFont.systemFont(ofSize: 16)
    view.addSubview(priceLabel)
  }

  func addDiscriptionLabel() {
    discriptionLabel = UILabel(frame: CGRect(x: 128, y: 490, width: view.bounds.width, height: 30))
    discriptionLabel.text = "наушники Airpods Pro 2020"
    discriptionLabel.textColor = .gray
    discriptionLabel.font = UIFont.systemFont(ofSize: 13)
    view.addSubview(discriptionLabel)
  }

  //  MARK: - add Image View With Text
  fileprivate func addImageView(paramImage: UIImage, paramFrame: CGRect) -> UIImageView {
    let result = UIImageView(frame: paramFrame)
    result.contentMode = .scaleAspectFit
    result.image = paramImage
    return result
  }

}
