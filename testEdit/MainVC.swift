//
//  MainVC.swift
//  testEdit
//
//  Created by 鬼村 大雅 on 2019/03/08.
//  Copyright © 2019年 鬼村 大雅. All rights reserved.
//

import UIKit
import WebKit
import AVKit
import AVFoundation

class MainVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate{

        let ipc = UIImagePickerController()
        var videoURL: URL?
    
    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
            
            let url = URL(string: "https://devstreaming-cdn.apple.com/videos/streaming/examples/bipbop_adv_example_hevc/master.m3u8")
            
            let playerItem = AVPlayerItem(url: url!)
        
            let queuePlayer = AVQueuePlayer(items: [playerItem])
            
            let playerLayer = AVPlayerLayer(player: queuePlayer)
            playerLayer.frame = self.view.bounds
            self.view.layer.addSublayer(playerLayer)
        
            queuePlayer.play()
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
        }
    }
