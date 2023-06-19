//
//  ViewController.swift
//  6appAudioPlayer
//
//  Created by vasiario on 23.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    //    labels
    let topLabel = UILabel()
    let firtsTrackNameButton = UIButton()
    let firtsTrackDurationLabel = UILabel()
    let secondTrackNameButton = UIButton()
    let secondTrackDurationLabel = UILabel()
    
    //    Button to PlayerViewContoller
    let centalButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: - topLabel
        topLabel.frame = CGRect(x: 176, y: 60, width: 100, height: 30)
        topLabel.text = "Plist"
        topLabel.font = .boldSystemFont(ofSize: 40)
        view.addSubview(topLabel)
        
        //firtsTrackNameLabel
        //        MARK: - firtsTrackNameButton
        firtsTrackNameButton.frame = CGRect(x: 100, y: 160, width: 260, height: 30)
        firtsTrackNameButton.setTitle("IC3PEAK - Все равно", for: .normal)
        firtsTrackNameButton.titleLabel?.font = UIFont.systemFont(ofSize: 28, weight: UIFont.Weight.bold)
        firtsTrackNameButton.setTitleColor(.black, for: .normal)
        view.addSubview(firtsTrackNameButton)
        firtsTrackNameButton.addTarget(self, action: #selector(firtsTrackNameButtonPressed), for: .touchUpInside)
        
        //        MARK: - firtsTrackDurationLabel
        firtsTrackDurationLabel.frame = CGRect(x: 370, y: 160, width: 150, height: 30)
        firtsTrackDurationLabel.text = "2:00"
        firtsTrackDurationLabel.font = .boldSystemFont(ofSize: 20)
        view.addSubview(firtsTrackDurationLabel)
        
        //secondTrackNameButton
        //        MARK: - secondTrackNameButton
        secondTrackNameButton.frame = CGRect(x: 94, y: 280, width: 260, height: 30)
        secondTrackNameButton.setTitle("IC3PEAK - Сказка", for: .normal)
        secondTrackNameButton.titleLabel?.font = UIFont.systemFont(ofSize: 28, weight: UIFont.Weight.bold)
        secondTrackNameButton.setTitleColor(.black, for: .normal)
        view.addSubview(secondTrackNameButton)
        secondTrackNameButton.addTarget(self, action: #selector(secondTrackNameButtonPressed), for: .touchUpInside)
        
        //        MARK: - secondTrackDurationLabel
        secondTrackDurationLabel.frame = CGRect(x: 370, y: 280, width: 150, height: 30)
        secondTrackDurationLabel.text = "3:00"
        secondTrackDurationLabel.font = .boldSystemFont(ofSize: 20)
        view.addSubview(secondTrackDurationLabel)
        
        //        images
        //        MARK: - firtsTrackImage
        let firtsTrackImageView = UIImageView(frame: CGRect(x: 20, y: 160, width: 70, height: 70))
        let firtsTrackImage = UIImage(named: "IC3PEAK1.jpg")
        firtsTrackImageView.image = firtsTrackImage
        view.addSubview(firtsTrackImageView)
        
        //        MARK: - secondTrackImage
        let secondTrackImageView = UIImageView(frame: CGRect(x: 20, y: 280, width: 70, height: 70))
        let secondTrackImage = UIImage(named: "IC3PEAK2.jpg")
        secondTrackImageView.image = secondTrackImage
        view.addSubview(secondTrackImageView)
    }
    
    
    //        action
    //        MARK: - firtsTrackNameButtonPressed
    @objc func firtsTrackNameButtonPressed() {
        let playerViewController = storyboard?.instantiateViewController(withIdentifier: "PlayerViewController")
        playerViewController?.modalPresentationStyle = .popover
        self.present(playerViewController!, animated: true, completion: nil)
    }
    
    //        MARK: - secondTrackNameButtonPressed
    @objc func secondTrackNameButtonPressed() {
        let playerViewController = storyboard?.instantiateViewController(withIdentifier: "PlayerViewController")
        playerViewController?.modalPresentationStyle = .popover
        self.present(playerViewController!, animated: true, completion: nil)
    }
    
}

