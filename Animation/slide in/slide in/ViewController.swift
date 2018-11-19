//
//  ViewController.swift
//  slide in
//
//  Created by yhtseng on 2018/11/19.
//  Copyright © 2018 yhtseng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var hippoImage: UIImageView!
    
    @IBOutlet var clickButton: UIButton!{
        didSet{
            clickButton.layer.cornerRadius = 25.0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hippoImage.image = UIImage(named: "hippo")
        
        // 初始將圖片移到視窗之外(X軸)右邊
        let rightTransform = CGAffineTransform(translationX: 600, y: 0)
        hippoImage.transform = rightTransform
        
        // 隱藏圖片
        hippoImage.alpha = 0
    }

    @IBAction func clickAction(sender: UIButton){
        UIView.animate(withDuration: 1.5, delay: 0.5, options: [], animations: {
            self.hippoImage.alpha = 1.0
            
            // 還原至原本的位置與大小
            self.hippoImage.transform = .identity
        }, completion: nil)
    }

}

