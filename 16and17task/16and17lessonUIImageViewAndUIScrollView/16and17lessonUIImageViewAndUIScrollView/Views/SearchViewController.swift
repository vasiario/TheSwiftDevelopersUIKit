//
//  SearchViewController.swift
//  16and17lessonUIImageViewAndUIScrollView
//
//  Created by vasiario on 22.05.2023.
//

import UIKit

final class SearchViewController: UIViewController, UIScrollViewDelegate {
    
    var searchTopLabel = UILabel()
    var searchTopField = UITextField()
    var recentlyViewTextLabel = UILabel()
    var cleanButton = UIButton()
    var requesOptionsLabel = UILabel()

/// ScrollView
  var topScrollView = UIScrollView()
  let airpodsImage = UIImage(named: "airpodsPro")
  let iphoneImage = UIImage(named: "iphone14pro")
  let appleWatchImage = UIImage(named: "appleWatchUltra")
  let macBookImage = UIImage(named: "macbook")
  let chargeMacBookImage = UIImage(named: "chargeMacbook")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addSearchTopLabel()
        addsearchTopField()
        addRecentlyViewLabel()
        addCleanButton()
        addRequesOptionsLabel()
        addSearchedResultLabel(index: 0, text: " AirPods Pro")
        addSearchedResultLabel(index: 1, text: " Iphone 14 pro Max")
        addSearchedResultLabel(index: 2, text: " Macbook Pro 2022 M2")
        addSearchedResultLabel(index: 3, text: " Apple Watch 7")

/// add scrollView
      let scrollViewRect = CGRect(x: 0, y: 300, width: view.bounds.width, height: 200)

      topScrollView = UIScrollView(frame: scrollViewRect)
      topScrollView.isPagingEnabled = false
      topScrollView.contentSize = CGSize(width: scrollViewRect.width * 1.9, height: scrollViewRect.height)
      view.addSubview(topScrollView)

      addImageViewWithText(image: airpodsImage!, text: "AirPods Pro", tag: 1)
      addImageViewWithText(image: iphoneImage!, text: "iPhone 14 Pro", tag: 2)
      addImageViewWithText(image: appleWatchImage!, text: "Apple Watch Ultra", tag: 3)
      addImageViewWithText(image: macBookImage!, text: "Macbook Pro", tag: 4)
      addImageViewWithText(image: chargeMacBookImage!, text: "Charge for Macbook Pro", tag: 5)
    }
    
    // MARK: - Setup
    fileprivate func addSearchTopLabel() {
        searchTopLabel = UILabel(frame: CGRect(x: 10, y: view.bounds.height / 10, width: 200, height: 100))
        searchTopLabel.text = "Поиск"
        searchTopLabel.font = UIFont.boldSystemFont(ofSize: 40)
        searchTopLabel.textColor = .white
        view.addSubview(searchTopLabel)
    }
    
    fileprivate func addsearchTopField() {
        searchTopField = UITextField(frame: CGRect(x: 10, y: view.bounds.height / 5.4, width: view.bounds.width - 30, height: 40))
        searchTopField.layer.cornerRadius = 12
        
        searchTopField.backgroundColor = .tertiaryLabel
        searchTopField.tintColor = .systemGray
        searchTopField.attributedPlaceholder = NSAttributedString(string: "Поиск по продуктам и магазинам", attributes: [NSAttributedString.Key.foregroundColor : UIColor.systemGray])
        addImagesearchTopField()
        view.addSubview(searchTopField)
    }
    
    fileprivate func addImagesearchTopField() {
        let magnifyingGlassIcon = UIImage(systemName: "magnifyingglass")
        let iconView = UIImageView(image: magnifyingGlassIcon)
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 30, height: 40))
        paddingView.addSubview(iconView)
        iconView.center = paddingView.center
        iconView.contentMode = .center
        searchTopField.leftView = paddingView
        searchTopField.leftViewMode = .unlessEditing
    }
    
    fileprivate func addRecentlyViewLabel() {
        recentlyViewTextLabel = UILabel(frame: CGRect(x: 10, y: view.bounds.height / 4, width: 300, height: 40))
        recentlyViewTextLabel.text = "Недавно просмотренные"
        recentlyViewTextLabel.font = UIFont.boldSystemFont(ofSize: 24)
        recentlyViewTextLabel.textColor = .white
        view.addSubview(recentlyViewTextLabel)
    }
    
    fileprivate func addCleanButton() {
        cleanButton = UIButton(frame: CGRect(x: recentlyViewTextLabel.frame.maxX + 10, y: recentlyViewTextLabel.frame.origin.y + 7, width: 100, height: 30))
        cleanButton.setTitle("Очистить", for: .normal)
        cleanButton.setTitleColor(.systemBlue, for: .normal)
        cleanButton.setTitleColor(.white, for: .highlighted)
        view.addSubview(cleanButton)
    }
    
    fileprivate func addRequesOptionsLabel() {
        requesOptionsLabel = UILabel(frame: CGRect(x: 10, y: view.bounds.height / 1.7, width: 300, height: 30))
        requesOptionsLabel.text = "Варианты запросов"
        requesOptionsLabel.font = UIFont.boldSystemFont(ofSize: 24)
        requesOptionsLabel.textColor = .white
        view.addSubview(requesOptionsLabel)
    }
    
    //    MARK: - add Bottom Labels
    fileprivate func addSearchedResultLabel(index: Int, text: String) {
        let label = UILabel(frame: CGRect(x: 10, y: requesOptionsLabel.frame.minY + CGFloat(50 * index + 50), width: view.bounds.width, height: 30))
        label.font = UIFont.systemFont(ofSize: 22)
        label.textColor = .white
        
        let imageAttachment = NSTextAttachment()
        imageAttachment.image = UIImage(systemName: "magnifyingglass")?.withTintColor(.systemGray)
        
        let imageString = NSAttributedString(attachment: imageAttachment)
        
        let labelText = NSMutableAttributedString()
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .center
        labelText.append(imageString)
        labelText.append(NSAttributedString(string: text, attributes: [.paragraphStyle: paragraphStyle]))
        label.attributedText = labelText
        
        let line = CALayer()
        line.frame = CGRect(x: 0, y: label.frame.height + 5, width: label.frame.width, height: 1)
        line.backgroundColor = UIColor.secondaryLabel.cgColor
        label.layer.addSublayer(line)
        
        view.addSubview(label)
    }

//  MARK: - add Image View With Text
  fileprivate func addImageViewWithText(image: UIImage, text: String, tag: Int) {
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

//  MARK: - imageTapped
  @objc func imageTapped(_ gesture: UITapGestureRecognizer) {
    if let imageView = gesture.view as? UIImageView {
      // Handle the tap on the image view
      switch imageView.tag {
      case 1:
        // AirPods Pro image tapped
        print("AirPods Pro tapped")

        let myChoiceVC = MyChoiseViewController()
        self.navigationController?.pushViewController(myChoiceVC, animated: true)

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
