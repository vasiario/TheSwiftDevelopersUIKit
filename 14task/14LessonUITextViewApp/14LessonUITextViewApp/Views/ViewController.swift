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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addCentalTextView()
        addSliderSmallBigText()
        addGreenColorTextButton()
        addRedColorTextButton()
        addBlueColorTextButton()
        addBlackColorTextButton()
        createSegmentedControl()
    }
    
    //    MARK: - Methods
    func addCentalTextView() {
        centralTextView = UITextView(frame: CGRect(x: 0, y: 60, width: view.bounds.width, height: view.bounds.height / 2))
        centralTextView.backgroundColor = .gray
        centralTextView.font = UIFont.systemFont(ofSize: 10, weight: .regular)
        centralTextView.contentInset = UIEdgeInsets(top: 20, left: 10, bottom: 0, right: 2)
        
        if let text = textManager.text {
            centralTextView.text = text
        } else {
            centralTextView.text = "Default Text"
        }
        
        view.addSubview(centralTextView)
    }
    
    func addSliderSmallBigText() {
        sliderSmallBigText = UISlider(frame: CGRect(x: 10, y: 530, width: 400, height: 50))
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
        greenColorTextButton = UIButton(frame: CGRect(x: 20, y: 600, width: 50, height: 50))
        greenColorTextButton.backgroundColor = .green
        greenColorTextButton.layer.cornerRadius = 25
        greenColorTextButton.addTarget(self, action: #selector(changeColor), for: .touchUpInside)
        view.addSubview(greenColorTextButton)
    }
    
    func addRedColorTextButton() {
        redColorTextButton = UIButton(frame: CGRect(x: 80, y: 600, width: 50, height: 50))
        redColorTextButton.backgroundColor = .red
        redColorTextButton.layer.cornerRadius = 25
        redColorTextButton.addTarget(self, action: #selector(changeColor), for: .touchUpInside)
        view.addSubview(redColorTextButton)
    }
    
    func addBlueColorTextButton() {
        blueColorTextButton = UIButton(frame: CGRect(x: 140, y: 600, width: 50, height: 50))
        blueColorTextButton.backgroundColor = .blue
        blueColorTextButton.layer.cornerRadius = 25
        blueColorTextButton.addTarget(self, action: #selector(changeColor), for: .touchUpInside)
        view.addSubview(blueColorTextButton)
    }
    
    func addBlackColorTextButton() {
        blackColorTextButton = UIButton(frame: CGRect(x: 200, y: 600, width: 50, height: 50))
        blackColorTextButton.backgroundColor = .black
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
        segmentSMtextFont.frame = CGRect(x: 300, y: 600, width: 100, height: 50)
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
}
