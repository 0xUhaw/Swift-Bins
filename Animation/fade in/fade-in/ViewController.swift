//
//  ViewController.swift
//  fade-in
//
//  Created by yhtseng on 2018/11/19.
//  Copyright © 2018 yhtseng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // 橋接Storyboard的UIImageView
    @IBOutlet var showImage: UIImageView!
    
    // 設定UIButton的外觀
    @IBOutlet var clickBtn: UIButton! {
        didSet{
            clickBtn.layer.cornerRadius = 25.0
        }
    }
    
    // 設定當按下按鈕時的動畫，這邊是做慢慢出現
    @IBAction func clickAction(sender: UIButton){
        UIView.animate(withDuration: 2.0){
            self.showImage.alpha = 1
        }
    }
    
    // 設定一開始不顯示
    override func viewDidLoad() {
        super.viewDidLoad()
        showImage.image = UIImage(named: "hippo")
        showImage.alpha = 0
    }
}


