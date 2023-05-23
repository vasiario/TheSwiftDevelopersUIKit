//
//  SearchViewController.swift
//  16and17lessonUIImageViewAndUIScrollView
//
//  Created by vasiario on 22.05.2023.
//

import UIKit

final class SearchViewController: UIViewController {
    
    var searchTopLabel = UILabel()
    var searchTopField = UITextField()
    var recentlyViewTextLabel = UILabel()
    var cleanButton = UIButton()
    var requesOptionsLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addSearchTopLabel()
        addsearchTopField()
        addRecentlyViewLabel()
        addCleanButton()
        addRequesOptionsLabel()
        addSearchedResultLabel(index: 0, text: "AirPods Pro")
        addSearchedResultLabel(index: 1, text: "Iphone 14 pro Max")
        addSearchedResultLabel(index: 2, text: "Macbook Pro 2022 M2")
        addSearchedResultLabel(index: 3, text: "Apple Watch 7")
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
        requesOptionsLabel = UILabel(frame: CGRect(x: 10, y: view.bounds.height / 1.6, width: 300, height: 30))
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
}
