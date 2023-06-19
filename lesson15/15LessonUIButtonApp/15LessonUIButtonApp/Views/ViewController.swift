//
//  ViewController.swift
//  15LessonUIButtonApp
//
//  Created by vasiario on 18.05.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    private let timerLabel = UILabel()
    private let buttonStartPause = UIButton()
    private let buttonReset = UIButton()
    private var isValueStart = false
    private var timer = Timer()
    private var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        setupTimerLabel()
        setupButtonStart()
        setupButtonReset()
    }
    
    // MARK: - Setup
    private func setupTimerLabel() {
        timerLabel.frame = CGRect(x: 0, y: view.bounds.height / 5, width: view.bounds.width, height: 100)
        timerLabel.text = "0"
        timerLabel.textColor = .white
        timerLabel.font = UIFont.systemFont(ofSize: 90)
        timerLabel.textAlignment = .center
        view.addSubview(timerLabel)
    }
    
    private func setupButtonStart() {
        buttonStartPause.frame = CGRect(x: view.bounds.width / 1.5, y: view.bounds.height / 2.3, width: 100, height: 100)
        buttonStartPause.layer.cornerRadius = 50
        buttonStartPause.setTitle("Start", for: .normal)
        buttonStartPause.setTitleColor(.systemGreen, for: .normal)
        buttonStartPause.layer.borderWidth = 5
        buttonStartPause.backgroundColor = .tertiaryLabel
        buttonStartPause.layer.borderColor = UIColor.systemGreen.cgColor
        buttonStartPause.addTarget(self, action: #selector(buttonStartPausePressed), for: .touchUpInside)
        view.addSubview(buttonStartPause)
    }
    
    private func setupButtonReset() {
        buttonReset.frame = CGRect(x: view.bounds.width / 12, y: view.bounds.height / 2.3, width: 100, height: 100)
        buttonReset.layer.cornerRadius = 50
        buttonReset.setTitle("Reset", for: .normal)
        buttonReset.setTitleColor(.lightGray, for: .normal)
        buttonReset.setTitleColor(.gray, for: .highlighted)
        buttonReset.layer.borderWidth = 5
        buttonReset.backgroundColor = .tertiaryLabel
        buttonReset.layer.borderColor = UIColor.lightGray.cgColor
        buttonReset.addTarget(self, action: #selector(timerUpdate), for: .touchUpInside)
        view.addSubview(buttonReset)
    }
    
    // MARK: - Actions
    @objc private func buttonStartPausePressed() {
        if isValueStart == false {
            isValueStart = true
            buttonStartPause.setTitle("Stop", for: .normal)
            buttonStartPause.layer.borderColor = UIColor.systemRed.cgColor
            buttonStartPause.setTitleColor(.systemRed, for: .normal)
            
            timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(runTimer), userInfo: nil, repeats: true)
            
        } else {
            isValueStart = false
            buttonStartPause.setTitle("Start", for: .normal)
            buttonStartPause.layer.borderColor = UIColor.systemGreen.cgColor
            buttonStartPause.setTitleColor(.systemGreen, for: .normal)
            
            timer.invalidate()
        }
    }
    
    // MARK: - Timers
    @objc private func runTimer() {
        counter += 1
        timerLabel.text = "\(counter)"
    }
    
  
    @objc private func timerUpdate() {
       counter = 0
        timerLabel.text = "\(counter)"
        }
    }

