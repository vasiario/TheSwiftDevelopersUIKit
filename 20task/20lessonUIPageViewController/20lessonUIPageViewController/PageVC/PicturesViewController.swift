//
//  PicturesViewController.swift
//  20lessonUIPageViewController
//
//  Created by vasiario on 07.06.2023.
//

import UIKit

class PicturesViewController: UIViewController {

//  MARK: - image
  private let setPictures: UIImageView = {
    let view = UIImageView()
    view.layer.cornerRadius = 120
    view.clipsToBounds = true
    view.backgroundColor = .white
    view.contentMode = .scaleAspectFit
    view.translatesAutoresizingMaskIntoConstraints = false

//    AddShadow
    view.layer.shadowColor = UIColor.gray.cgColor
    view.layer.shadowOffset = CGSize(width: 1, height: 1)
    view.layer.shadowOpacity = 10
    view.layer.shadowRadius = 20
    view.layer.masksToBounds = false
    return view
  }()

//  MARK: - button
  private let button: UIButton = {
     let button = UIButton(type: .custom)
    button.backgroundColor = .black
    button.layer.cornerRadius = 25
     button.setTitle("Продолжить", for: .normal)
     button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
     button.translatesAutoresizingMaskIntoConstraints = false
     return button
   }()

//  MARK: - Label
  private let firstNameLabel: UILabel = {
    let label = UILabel()
    label.textColor = .black
    label.font = UIFont.systemFont(ofSize: 30)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()

  lazy var subView: [UIView] = [self.setPictures, self.firstNameLabel]

  // MARK: - Animation

  private func animateContent() {
    UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseInOut, animations: {
           // Первая анимация: сдвиг влево
           self.setPictures.transform = CGAffineTransform(translationX: -100, y: 0)
           self.firstNameLabel.transform = CGAffineTransform(translationX: 100, y: 0)
           self.view.layoutIfNeeded()
       }, completion: { _ in
           UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseInOut, animations: {
               // Вторая анимация: возврат в исходное положение
               self.setPictures.transform = .identity
               self.firstNameLabel.transform = .identity
               self.view.layoutIfNeeded()
           }, completion: nil)
       })
  }

//viewWillAppear
  override func viewWillAppear(_ animated: Bool) {
      super.viewWillAppear(animated)

    animateContent()
  }

  @objc private func buttonTapped() {
      print("pressed")
    }
//MARK: - init

  init(pictures: PicturesHelper) {
    super.init(nibName: nil, bundle: nil)
    view.backgroundColor = .white
    edgesForExtendedLayout = []

    setPictures.image = pictures.image
    firstNameLabel.text = pictures.name

    for view in subView { self.view.addSubview(view) }

    NSLayoutConstraint.activate([
      NSLayoutConstraint(item: setPictures, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 250),
      NSLayoutConstraint(item: setPictures, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 250),
      NSLayoutConstraint(item: setPictures, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: view.center.x + 100),
      NSLayoutConstraint(item: setPictures, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0)
    ])

    NSLayoutConstraint.activate([
      NSLayoutConstraint(item: firstNameLabel, attribute: .top, relatedBy: .equal, toItem: setPictures, attribute: .bottom, multiplier: 1, constant: 10),
      NSLayoutConstraint(item: firstNameLabel, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0)
      ])

    // Добавление кнопки на вью, если это третье изображение
        if pictures.name == "airpodsPro" {
          view.addSubview(button)
          NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 350),
            button.widthAnchor.constraint(equalToConstant: 200),
            button.heightAnchor.constraint(equalToConstant: 50)
          ])
        }

  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

