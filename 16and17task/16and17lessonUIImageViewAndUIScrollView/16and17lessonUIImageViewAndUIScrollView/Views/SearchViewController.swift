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
    var searchedResultLabel1 = UILabel()
    var searchedResultLabel2 = UILabel()
    var searchedResultLabel3 = UILabel()
    var searchedResultLabel4 = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addSearchTopLabel()
        addsearchTopField()
        addRecentlyViewLabel()
        addCleanButton()
        addRequesOptionsLabel()
        addSearchedResultLabel1()
        addSearchedResultLabel2()
        addSearchedResultLabel3()
        addSearchedResultLabel4()
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
    fileprivate func addSearchedResultLabel1() {
        searchedResultLabel1 = UILabel(frame: CGRect(x: 10, y: requesOptionsLabel.frame.minY + 50, width: 300, height: 30))
        searchedResultLabel1.font = UIFont.systemFont(ofSize: 22)
        searchedResultLabel1.textColor = .white
        
        let imageAttachment = NSTextAttachment()
        imageAttachment.image = UIImage(systemName: "magnifyingglass")?.withTintColor(.systemGray)
        
        let imageString = NSAttributedString(attachment: imageAttachment)
        
        let labelText = NSMutableAttributedString()
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .center
        labelText.append(imageString)
        labelText.append(NSAttributedString(string: " AirPods Pro", attributes: [.paragraphStyle: paragraphStyle]))
        
        searchedResultLabel1.attributedText = labelText
        
        view.addSubview(searchedResultLabel1)
    }
    
    fileprivate func addSearchedResultLabel2() {
        searchedResultLabel2 = UILabel(frame: CGRect(x: 10, y: requesOptionsLabel.frame.minY + 90, width: 300, height: 30))
        searchedResultLabel2.font = UIFont.systemFont(ofSize: 22)
        searchedResultLabel2.textColor = .white
        
        let imageAttachment = NSTextAttachment()
        imageAttachment.image = UIImage(systemName: "magnifyingglass")?.withTintColor(.systemGray)
        
        let imageString = NSAttributedString(attachment: imageAttachment)
        
        let labelText = NSMutableAttributedString()
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .center
        labelText.append(imageString)
        labelText.append(NSAttributedString(string: " Iphone 14 pro Max", attributes: [.paragraphStyle: paragraphStyle]))
        
        searchedResultLabel2.attributedText = labelText
        
        view.addSubview(searchedResultLabel2)
    }
    
    fileprivate func addSearchedResultLabel3() {
        searchedResultLabel3 = UILabel(frame: CGRect(x: 10, y: requesOptionsLabel.frame.minY + 130, width: 300, height: 30))
        searchedResultLabel3.font = UIFont.systemFont(ofSize: 22)
        searchedResultLabel3.textColor = .white
        
        let imageAttachment = NSTextAttachment()
        imageAttachment.image = UIImage(systemName: "magnifyingglass")?.withTintColor(.systemGray)
        
        let imageString = NSAttributedString(attachment: imageAttachment)
        
        let labelText = NSMutableAttributedString()
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .center
        labelText.append(imageString)
        labelText.append(NSAttributedString(string: " Macbook Pro 2022 M2", attributes: [.paragraphStyle: paragraphStyle]))
        
        searchedResultLabel3.attributedText = labelText
        
        view.addSubview(searchedResultLabel3)
    }
    
    fileprivate func addSearchedResultLabel4() {
        searchedResultLabel4 = UILabel(frame: CGRect(x: 10, y: requesOptionsLabel.frame.minY + 170, width: 300, height: 30))
        searchedResultLabel4.font = UIFont.systemFont(ofSize: 22)
        searchedResultLabel4.textColor = .white
        
        let imageAttachment = NSTextAttachment()
        imageAttachment.image = UIImage(systemName: "magnifyingglass")?.withTintColor(.systemGray)
        
        let imageString = NSAttributedString(attachment: imageAttachment)
        
        let labelText = NSMutableAttributedString()
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .center
        labelText.append(imageString)
        labelText.append(NSAttributedString(string: " Apple Watch 7", attributes: [.paragraphStyle: paragraphStyle]))
        
        searchedResultLabel4.attributedText = labelText
        
        view.addSubview(searchedResultLabel4)
    }
}
