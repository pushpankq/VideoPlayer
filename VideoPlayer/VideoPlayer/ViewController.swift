//
//  ViewController.swift
//  VideoPlayer
//
//  Created by Pushpank Kumar on 26/02/24.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
    
    @IBAction func playVideoButtonTapped(_ sender: UIButton) {
        if let videoURL = Bundle.main.url(forResource: "India", withExtension: "mp4") {
            let player = AVPlayer(url: videoURL)
            let playerViewController = AVPlayerViewController()
            playerViewController.player = player
            present(playerViewController, animated: true) {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                    player.play()
                }
            }
        }
    }
}

