//
//  ViewController.swift
//  Spring
//
//  Created by yhtseng on 2018/11/20.
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
        hippoImage.alpha = 0
        
        // 先將圖片移動到視窗之外右邊(X軸)
        let rightTransform = CGAffineTransform(scaleX: 600, y: 0)
        hippoImage.transform = rightTransform
        
    }

    @IBAction func clickAction(sender: UIButton){
        UIView.animate(withDuration: 2, delay: 0.5, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.7, options: [], animations: {
            
            // Damping(阻尼)，介於0~1，當設定值越小彈跳越大
            // Velocity(速度)，彈跳的速度
            
            self.hippoImage.alpha = 1
            self.hippoImage.transform = .identity
        }, completion: nil)
    }
    
}

