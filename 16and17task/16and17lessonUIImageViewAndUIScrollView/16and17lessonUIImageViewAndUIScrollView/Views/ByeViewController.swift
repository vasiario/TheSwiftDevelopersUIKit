//
//  ViewController.swift
//  16and17lessonUIImageViewAndUIScrollView
//
//  Created by vasiario on 19.05.2023.
//

import UIKit

final class ByeViewController: UIViewController, UIScrollViewDelegate {

  var topScrollView = UIScrollView()
  let airpodsImage = UIImage(named: "airpodsPro")
  let iphoneImage = UIImage(named: "iphone14pro")
  let appleWatchImage = UIImage(named: "appleWatchUltra")
  let macBookImage = UIImage(named: "macbook")
  let chargeMacBookImage = UIImage(named: "chargeMacbook")
  let viewForAirpods = UIView()

  override func viewDidLoad() {
    super.viewDidLoad()

    let scrollViewRect = CGRect(x: 0, y: 300, width: view.bounds.width, height: 200)

    topScrollView = UIScrollView(frame: scrollViewRect)
    topScrollView.isPagingEnabled = false
    topScrollView.contentSize = CGSize(width: scrollViewRect.width * 1.9, height: scrollViewRect.height)
    topScrollView.backgroundColor = .red
    view.addSubview(topScrollView)

    addImageViewWithText(image: airpodsImage!, text: "AirPods Pro", tag: 1)
    addImageViewWithText(image: iphoneImage!, text: "iPhone 14 Pro", tag: 2)
    addImageViewWithText(image: appleWatchImage!, text: "Apple Watch Ultra", tag: 3)
    addImageViewWithText(image: macBookImage!, text: "Macbook Pro", tag: 4)
    addImageViewWithText(image: chargeMacBookImage!, text: "Charge for Macbook Pro", tag: 5)
  }

  func addImageViewWithText(image: UIImage, text: String, tag: Int) {
    let spacing: CGFloat = 10 // Set the desired spacing between the gray views

    let containerView = UIView(frame: CGRect(x: 0, y: 0, width: (topScrollView.bounds.width - spacing * 2) / 2.7, height: topScrollView.bounds.height))
    containerView.backgroundColor = .tertiaryLabel
    containerView.layer.cornerRadius = 20

    let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: containerView.bounds.width, height: containerView.bounds.height - 50))
    imageView.contentMode = .scaleAspectFit
    imageView.image = image
    imageView.tag = tag // Assign a tag to identify the image view
    imageView.isUserInteractionEnabled = true // Enable user interaction
    let tapGesture = UITapGestureRecognizer(target: self, action: #selector(imageTapped))
    imageView.addGestureRecognizer(tapGesture)
    containerView.addSubview(imageView)

    let label = UILabel(frame: CGRect(x: 0, y: containerView.bounds.height - 50, width: containerView.bounds.width, height: 50))
    label.textAlignment = .center
    label.text = text
    label.textColor = .white
    containerView.addSubview(label)

    topScrollView.addSubview(containerView)

    if topScrollView.subviews.count > 1 {
      if let lastView = topScrollView.subviews[topScrollView.subviews.count - 2] as? UIView {
        containerView.frame.origin.x = lastView.frame.maxX + spacing // Add spacing after the previous gray view
      }
    } else {
      containerView.frame.origin.x = spacing // Align the first gray view to the left side with spacing
    }
  }
  @objc func imageTapped(_ gesture: UITapGestureRecognizer) {
    if let imageView = gesture.view as? UIImageView {
      // Handle the tap on the image view
      switch imageView.tag {
      case 1:
        // AirPods Pro image tapped
        print("AirPods Pro tapped")
      case 2:
        // iPhone 14 Pro image tapped
        print("iPhone 14 Pro tapped")
      case 3:
        // Apple Watch Ultra image tapped
        print("Apple Watch Ultra tapped")
      case 4:
        // Macbook Pro image tapped
        print("Macbook Pro tapped")
      case 5:
        // Charge for Macbook Pro image tapped
        print("Charge for Macbook Pro tapped")
      default:
        break
      }
    }
  }
}
//        addCentralTextLabel()


//   fileprivate func addCentralTextLabel() {
//        centralTextLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 100))
//        centralTextLabel.center = view.center
//        centralTextLabel.text = "В разработке"
//        centralTextLabel.font = UIFont.systemFont(ofSize: 30)
//        centralTextLabel.textColor = .white
//       view.addSubview(centralTextLabel)
//    }
