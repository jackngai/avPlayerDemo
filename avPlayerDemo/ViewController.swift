//
//  ViewController.swift
//  avPlayerDemo
//
//  Created by Jack Ngai on 8/10/17.
//  Copyright © 2017 Jack Ngai. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation


class ViewController: UIViewController {
    
    var playerViewController = AVPlayerViewController()
    var playerView = AVPlayer()
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let fileURL = Bundle.main.path(forResource: "1", ofType: "mp4")

        playerView = AVPlayer(url: URL(fileURLWithPath: fileURL!))
        
        playerViewController.player = playerView
        
        present(playerViewController, animated: true)
       
        playerViewController.videoGravity = "AVLayerVideoGravityResizeAspectFill"
        playerViewController.showsPlaybackControls = false
        playerViewController.player?.play()
        
        playerViewController.showsPlaybackControls = true
        
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

