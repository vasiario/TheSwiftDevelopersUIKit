//
//  ViewController.swift
//  14LessonUITextViewApp
//
//  Created by vasiario on 15.05.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    private var centralTextView = UITextView()
    private var textManager =  TextManager()
    private var sliderSmallBigText = UISlider()
    private var greenColorTextButton = UIButton()
    private var blackColorTextButton = UIButton()
    private var redColorTextButton = UIButton()
    private var blueColorTextButton = UIButton()
    private var segmentSMtextFont = UISegmentedControl()
    private var switchDarkWhiteTheme = UISwitch()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        MARK: - Notification
        NotificationCenter.default.addObserver(self, selector: #selector(updateTextView), name: UIResponder.keyboardDidShowNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(updateTextView), name: UIResponder.keyboardWillHideNotification, object: nil)
        
        //        Call Methods in viewDidLoad
        addCentalTextView()
        addSliderSmallBigText()
        addGreenColorTextButton()
        addRedColorTextButton()
        addBlueColorTextButton()
        addBlackColorTextButton()
        createSegmentedControl()
        addSwitchDarkWhiteTheme()
        
    }
    
    //    MARK: - Methods
    func addCentalTextView() {
        centralTextView = UITextView(frame: CGRect(x: 0, y: 120, width: view.bounds.width, height: view.bounds.height / 1.5))
        centralTextView.backgroundColor = .systemGray
        centralTextView.font = UIFont.systemFont(ofSize: 10, weight: .regular)
        centralTextView.contentInset = UIEdgeInsets(top: 10, left: 10, bottom: 0, right: 2)
        
        if let text = textManager.text {
            centralTextView.text = text
        } else {
            centralTextView.text = "Default Text"
        }
        
        view.addSubview(centralTextView)
    }
    
    func addSliderSmallBigText() {
        sliderSmallBigText = UISlider(frame: CGRect(x: 10, y: 740, width: 400, height: 50))
        sliderSmallBigText.minimumValue = 10
        sliderSmallBigText.maximumValue = 100
        sliderSmallBigText.addTarget(self, action: #selector(sliderValueChanged), for: .valueChanged)
        view.addSubview(sliderSmallBigText)
    }
    
    @objc func sliderValueChanged() {
        let fontSize = CGFloat(sliderSmallBigText.value)
        centralTextView.font = UIFont.systemFont(ofSize: fontSize)
    }
    
    func addGreenColorTextButton() {
        greenColorTextButton = UIButton(frame: CGRect(x: 20, y: 790, width: 50, height: 50))
        greenColorTextButton.backgroundColor = .green
        greenColorTextButton.layer.borderWidth = 2
        greenColorTextButton.layer.borderColor = UIColor.gray.cgColor
        greenColorTextButton.layer.cornerRadius = 25
        greenColorTextButton.addTarget(self, action: #selector(changeColor), for: .touchUpInside)
        view.addSubview(greenColorTextButton)
    }
    
    func addRedColorTextButton() {
        redColorTextButton = UIButton(frame: CGRect(x: 80, y: 790, width: 50, height: 50))
        redColorTextButton.backgroundColor = .red
        redColorTextButton.layer.borderWidth = 2
        redColorTextButton.layer.borderColor = UIColor.gray.cgColor
        redColorTextButton.layer.cornerRadius = 25
        redColorTextButton.addTarget(self, action: #selector(changeColor), for: .touchUpInside)
        view.addSubview(redColorTextButton)
    }
    
    func addBlueColorTextButton() {
        blueColorTextButton = UIButton(frame: CGRect(x: 140, y: 790, width: 50, height: 50))
        blueColorTextButton.backgroundColor = .blue
        blueColorTextButton.layer.borderWidth = 2
        blueColorTextButton.layer.borderColor = UIColor.gray.cgColor
        blueColorTextButton.layer.cornerRadius = 25
        blueColorTextButton.addTarget(self, action: #selector(changeColor), for: .touchUpInside)
        view.addSubview(blueColorTextButton)
    }
    
    func addBlackColorTextButton() {
        blackColorTextButton = UIButton(frame: CGRect(x: 200, y: 790, width: 50, height: 50))
        blackColorTextButton.backgroundColor = .black
        blackColorTextButton.layer.borderWidth = 2
        blackColorTextButton.layer.borderColor = UIColor.gray.cgColor
        blackColorTextButton.layer.cornerRadius = 25
        blackColorTextButton.addTarget(self, action: #selector(changeColor), for: .touchUpInside)
        view.addSubview(blackColorTextButton)
    }
    
    @objc func changeColor(target: UIButton) {
        if target == greenColorTextButton {
            centralTextView.textColor = .green
        }
        if target == redColorTextButton {
            centralTextView.textColor = .red
        }
        if target == blackColorTextButton {
            centralTextView.textColor = .black
        }
        if target == blueColorTextButton {
            centralTextView.textColor = .blue
        }
    }
    
    func createSegmentedControl() {
        segmentSMtextFont = UISegmentedControl(items: ["а", "А"])
        segmentSMtextFont.frame = CGRect(x: 300, y: 790, width: 100, height: 50)
        segmentSMtextFont.addTarget(self, action: #selector(segmentedControlValueChanged), for: .valueChanged)
        view.addSubview(segmentSMtextFont)
    }
    
    @objc func segmentedControlValueChanged(sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            if let currentFont = centralTextView.font {
                centralTextView.font = UIFont.systemFont(ofSize: currentFont.pointSize, weight: .regular)
            }
        case 1:
            if let currentFont = centralTextView.font {
                centralTextView.font = UIFont.systemFont(ofSize: currentFont.pointSize, weight: .medium)
            }
        default:
            break
        }
    }
    
    func addSwitchDarkWhiteTheme() {
        switchDarkWhiteTheme = UISwitch(frame: CGRect(x: 324, y: 860, width: 30, height: 30))
        switchDarkWhiteTheme.onTintColor = .black
        switchDarkWhiteTheme.addTarget(self, action: #selector(changeValueSwitchTheme), for: .valueChanged)
        view.addSubview(switchDarkWhiteTheme)
    }
    
    @objc func changeValueSwitchTheme(target: UISwitch) {
        if target == switchDarkWhiteTheme {
            if target.isOn == true {
                view.backgroundColor = .darkGray
            } else if target.isOn == false {
                view.backgroundColor = .white
            }
        }
    }
    
    //    MARK: - touches began TextView
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        centralTextView.resignFirstResponder()
    }
    
    //    MARK: - param Notification for updateTextView
    @objc func updateTextView(param: Notification) {
        let userInfo = param.userInfo
        
        let getKeyboardRect = (userInfo![UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
        let keyboardFrame = view.convert(getKeyboardRect, to: view.window)
        
        if param.name == UIResponder.keyboardWillHideNotification {
            centralTextView.contentInset = UIEdgeInsets.zero
        } else {
            centralTextView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: keyboardFrame.height, right: 0)
            centralTextView.scrollIndicatorInsets = centralTextView.contentInset
        }
        centralTextView.scrollRangeToVisible(centralTextView.selectedRange)
    }
}
