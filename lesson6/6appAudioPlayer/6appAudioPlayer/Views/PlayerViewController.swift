//
//  PlayerViewController.swift
//  6appAudioPlayer
//
//  Created by vasiario on 23.04.2023.
//

import UIKit
import AVFoundation

class PlayerViewController: UIViewController {

    
    @IBOutlet weak var firstTimeIntervalMusic: UILabel!
    @IBOutlet weak var secondTimeIntervalMusic: UILabel!
    
    @IBOutlet weak var changeIntervalMusicSlider: UISlider!
    
    @IBOutlet weak var playButton: UIButton!
    var player = AVPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        do {
            if let audioPath = Bundle.main.path(forResource: "IC3PEAK - Все равно", ofType: "mp3") {
                try player = AVPlayer(url: URL(fileURLWithPath: audioPath))
            }
        } catch {
            print("Error!")
        }
    }
    
    
//    playButton
    @IBAction func playButtonPressed(_ sender: Any) {
        if self.player.rate == 0 {
            playButton.setImage(UIImage(systemName: "pause.fill"), for: .normal)
            self.player.play()
        } else {
                        playButton.setImage(UIImage(systemName: "play.fill"), for: .normal)
            self.player.pause()
        }
    }
    
//    sliderAction
    @IBAction func musicTimeIntervalAction(_ sender: Any) {
        let time = CMTime(seconds: Double(changeIntervalMusicSlider.value), preferredTimescale: 1)
        player.seek(to: time)
    }
    
//    go to ViewController (closedViewButton)
    @IBAction func closedViewButton(_ sender: Any) {
      dismiss(animated: true)
    }
    
//    button share
    @IBAction func shareButtonPressed(_ sender: Any) {
    }
    
    
}
