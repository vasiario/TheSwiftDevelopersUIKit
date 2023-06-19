//
//  SecondViewController.swift
//  16and17lessonUIImageViewAndUIScrollView
//
//  Created by vasiario on 19.05.2023.
//

import UIKit

final class ForYouViewController: UIViewController {

  private var topForYouLabel = UILabel()
  private var hereIsNewLabel = UILabel()
  private var infoView = UIView()
  private var topInfoViewLabel = UILabel()
  private var moreInfoViewLabel = UILabel()
  private var yourChoiseTehImage = UIImage(named: "airpodsPro")
  private var rightInfoViewButton = UIButton()
  private var bottomInfoViewProgressView = UIProgressView()
  private var oneBottomInfoViewLabel = UILabel()
  private var twoBottomInfoViewLabel = UILabel()
  private var threeBottomInfoViewLabel = UILabel()
  
  override func viewDidLoad() {
    super.viewDidLoad()

    view.backgroundColor = .white
    addTopForYouLabel()
    addHereIsNewLabel()
    addInfoView()
  }
  
  //    MARK: - Setup
  fileprivate func addTopForYouLabel() {
    topForYouLabel.frame = CGRect(x: 16, y: 120,
                                  width: view.bounds.width - 32,
                                  height: 40)
    topForYouLabel.font = UIFont.systemFont(ofSize: 38, weight: .bold)
    topForYouLabel.text = "Для вас"
    topForYouLabel.textColor = .black

    let line = CALayer()
    line.frame = CGRect(x: 0,
                        y: topForYouLabel.frame.height + 12,
                        width: topForYouLabel.frame.width,
                        height: 0.7)
    line.backgroundColor = UIColor.tertiaryLabel.cgColor
    topForYouLabel.layer.addSublayer(line)
    view.addSubview(topForYouLabel)
  }

  fileprivate func addHereIsNewLabel() {
    hereIsNewLabel.frame = CGRect(x: 16, y: 200,
                                  width: view.bounds.width - 32,
                                  height: 40)
    hereIsNewLabel.font = UIFont.systemFont(ofSize: 30, weight: .bold)
    hereIsNewLabel.text = "Вот что нового"
    hereIsNewLabel.textColor = .black
    view.addSubview(hereIsNewLabel)
  }

  fileprivate func addInfoView() {
    infoView.frame = CGRect(x: 16, y: 260,
                            width: view.bounds.width - 32, height: 200)
    infoView.backgroundColor = .white
    infoView.layer.cornerRadius = 20

    applyShadowOnView(infoView)
    view.addSubview(infoView)

    ///add topInfoViewLabel for view
    topInfoViewLabel.frame = CGRect(x: 110, y: 30,
                                    width: 300, height: 20)
    topInfoViewLabel.text = "Ваш заказ отправлен"
    topInfoViewLabel.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
    infoView.addSubview(topInfoViewLabel)

    ///add moreInfoViewLabel for view
    moreInfoViewLabel.frame = CGRect(x: 110, y: 60,
                                     width: 300, height: 20)
    moreInfoViewLabel.text = "1 товар, доставка завтра"
    moreInfoViewLabel.font = UIFont.systemFont(ofSize: 20)
    moreInfoViewLabel.textColor = UIColor.gray
    infoView.addSubview(moreInfoViewLabel)

    ///add line for view
    let line = UIView()
    line.frame = CGRect(x: 0,
                        y: infoView.frame.height / 1.6,
                        width: infoView.frame.width, height: 0.7)
    line.backgroundColor = UIColor.tertiaryLabel
    infoView.addSubview(line)

    ///add image choise
    let image = UIImageView(image: yourChoiseTehImage)
    image.frame = CGRect(x: 10,
                         y: 10,
                         width: 100, height: 100)
    image.contentMode = .scaleAspectFill
    infoView.addSubview(image)

    ///add right button
    rightInfoViewButton.frame = CGRect(x: infoView.frame.width - 50,
                                       y: 18,
                                       width: 50, height: 100)
    rightInfoViewButton.setImage(UIImage(systemName: "chevron.right"), for: .normal)
    rightInfoViewButton.imageView?.contentMode = .scaleAspectFit
    rightInfoViewButton.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
    rightInfoViewButton.imageView?.tintColor = .gray
    infoView.addSubview(rightInfoViewButton)

    ///add bottomInfoViewProgressView
    bottomInfoViewProgressView.progressViewStyle = .default
    bottomInfoViewProgressView.frame = CGRect(x: 10, y: infoView.frame.height - 50,
                                              width: infoView.frame.width - 20,
                                              height: 50)
    bottomInfoViewProgressView.progressTintColor = .systemGreen
    bottomInfoViewProgressView.trackTintColor = .lightGray
    bottomInfoViewProgressView.transform = CGAffineTransform(scaleX: 1.0, y: 2.0)
    bottomInfoViewProgressView.progress = 0.5
    infoView.addSubview(bottomInfoViewProgressView)

    ///add oneBottomInfoViewLabel for view
    oneBottomInfoViewLabel.frame = CGRect(x: 10, y: infoView.frame.height - 34,
                                     width: 150, height: 20)
    oneBottomInfoViewLabel.text = "Обрабатывается"
    oneBottomInfoViewLabel.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
    oneBottomInfoViewLabel.textColor = UIColor.black
    infoView.addSubview(oneBottomInfoViewLabel)

    ///add oneBottomInfoViewLabel for view
    twoBottomInfoViewLabel.frame = CGRect(x: oneBottomInfoViewLabel.frame.maxX, y: infoView.frame.height - 34,
                                     width: 150, height: 20)
    twoBottomInfoViewLabel.text = "Отправлено"
    twoBottomInfoViewLabel.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
    twoBottomInfoViewLabel.textColor = UIColor.black
    infoView.addSubview(twoBottomInfoViewLabel)

    ///add oneBottomInfoViewLabel for view
    threeBottomInfoViewLabel.frame = CGRect(x: twoBottomInfoViewLabel.frame.maxX, y: infoView.frame.height - 34,
                                     width: 150, height: 20)
    threeBottomInfoViewLabel.text = "Доставлено"
    threeBottomInfoViewLabel.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
    threeBottomInfoViewLabel.textColor = UIColor.systemGray
    infoView.addSubview(threeBottomInfoViewLabel)
  }

  //  MARK: Set shadow for view
  func applyShadowOnView(_ view:UIView) {
    view.layer.shadowColor = UIColor.darkGray.cgColor
    view.layer.shadowOpacity = 0.4
    view.layer.shadowOffset = CGSize(width: 0, height: 16)
    view.layer.shadowRadius = 20
  }
}

