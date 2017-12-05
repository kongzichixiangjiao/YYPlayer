//
//  ViewController.swift
//  YYPlayer
//
//  Created by 侯佳男 on 2017/12/5.
//  Copyright © 2017年 侯佳男. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var playBackView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initPlayerView()
    }
    
    func initPlayerView() {
        self.playBackView.addSubview(pView)
        
        playBackView.addConstraint(NSLayoutConstraint(item: pView, attribute: .left, relatedBy: .equal, toItem: playBackView, attribute: .left, multiplier: 1, constant: 0))
        playBackView.addConstraint(NSLayoutConstraint(item: pView, attribute: .top, relatedBy: .equal, toItem: playBackView, attribute: .top, multiplier: 1, constant: 0))
        playBackView.addConstraint(NSLayoutConstraint(item: pView, attribute: .bottom, relatedBy: .equal, toItem: playBackView, attribute: .bottom, multiplier: 1, constant: 0))
        playBackView.addConstraint(NSLayoutConstraint(item: pView, attribute: .right, relatedBy: .equal, toItem: playBackView, attribute: .right, multiplier: 1, constant: 0))
    }
    
    lazy var pView: YYPlayerView = {
        let v = YYPlayerView.loadPlayerView()
        v.urlString = "http://qiniu.puxinasset.com/099f507aed7c5799d5ff40386a1a9615.mp4"
        v.maskImageView.image = UIImage()
        return v
    }()
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

