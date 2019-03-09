//
//  subVC.swift
//  testEdit
//
//  Created by 鬼村 大雅 on 2019/03/08.
//  Copyright © 2019年 鬼村 大雅. All rights reserved.
//

import UIKit
import WebKit
import AVKit
import AVFoundation

class subVC: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let embedHTML = "<html><head><meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=yes\"/></head><body><div><iframe width=\"711\" height=\"400\" src=\"https://www.youtube.com/embed/xaI-_TfJOeQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe></div></body></html>"
        
        let url1 = URL(string: "https://")
        
        webView.loadHTMLString(embedHTML, baseURL: url1)
        webView.contentMode = UIView.ContentMode.scaleAspectFit
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
