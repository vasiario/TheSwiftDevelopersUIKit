//
//  ViewController.swift
//  lesson24Constaints
//
//  Created by vasiario on 19.06.2023.
//

import UIKit

final class ViewController: UIViewController {

  private let grayView: UIView = {
    let view = UIView()
    view.backgroundColor = .gray
    return view
  }()

  private let redLightView: UIView = {
    let view = UIView()
    view.backgroundColor = .red
    return view
  }()

  private let yellowLightView: UIView = {
    let view = UIView()
    view.backgroundColor = .yellow
    return view
  }()

  private let greenLightView: UIView = {
    let view = UIView()
    view.backgroundColor = .green
    return view
  }()

  override func viewDidLoad() {
    super.viewDidLoad()
    view.addSubview(grayView)
    grayView.addSubview(redLightView)
    grayView.addSubview(yellowLightView)
    grayView.addSubview(greenLightView)
    setupConstraints()
  }

  private func setupConstraints() {
    setupGrayViewConstraints()
    setupRedLightViewConstraints()
    setupYellowLightViewConstraints()
    setupGreenLightViewConstraints()
  }

  private func setupGrayViewConstraints() {
    grayView.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      grayView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
      grayView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      grayView.heightAnchor.constraint(equalToConstant: 360),
      grayView.widthAnchor.constraint(equalToConstant: 150)
    ])

    grayView.layer.cornerRadius = 15
  }

  private func setupRedLightViewConstraints() {
    redLightView.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      redLightView.topAnchor.constraint(equalTo: grayView.topAnchor, constant: 20),
      redLightView.leadingAnchor.constraint(equalTo: grayView.leadingAnchor, constant: 20),
      redLightView.trailingAnchor.constraint(equalTo: grayView.trailingAnchor, constant: -20),
      redLightView.heightAnchor.constraint(equalToConstant: 100),
    ])

    redLightView.layer.cornerRadius = 50
  }

  private func setupYellowLightViewConstraints() {
    yellowLightView.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      yellowLightView.topAnchor.constraint(equalTo: redLightView.bottomAnchor, constant: 10),
      yellowLightView.leadingAnchor.constraint(equalTo: grayView.leadingAnchor, constant: 20),
      yellowLightView.trailingAnchor.constraint(equalTo: grayView.trailingAnchor, constant: -20),
      yellowLightView.heightAnchor.constraint(equalToConstant: 100),
      yellowLightView.centerYAnchor.constraint(equalTo: grayView.centerYAnchor)
    ])

    yellowLightView.layer.cornerRadius = 50
  }

  private func setupGreenLightViewConstraints() {
    greenLightView.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      greenLightView.bottomAnchor.constraint(equalTo: grayView.bottomAnchor, constant: -20),
      greenLightView.leadingAnchor.constraint(equalTo: grayView.leadingAnchor, constant: 20),
      greenLightView.trailingAnchor.constraint(equalTo: grayView.trailingAnchor, constant: -20),
      greenLightView.heightAnchor.constraint(equalToConstant: 100),
    ])

    greenLightView.layer.cornerRadius = 50
  }
}
