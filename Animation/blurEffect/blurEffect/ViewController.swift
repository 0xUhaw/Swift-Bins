//
//  ViewController.swift
//  blurEffect
//
//  Created by yhtseng on 2018/11/20.
//  Copyright © 2018 yhtseng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var clickTemp:Bool = false

    @IBOutlet var blurEffectBG: UIImageView!
    @IBOutlet var hippo: UIImageView!
    
    @IBOutlet var clickButton: UIButton!{
        didSet{
            clickButton.layer.cornerRadius = 25.0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        blurEffectBG.image = UIImage(named: "hippo")
        blurEffectBG.alpha = 0
        
        hippo.image = UIImage(named: "hippo")
        hippo.alpha = 0
    }
    
    @IBAction func clickAction(sender: UIButton){
        
        // 設定只執行一次Action
        if clickTemp == false {
            UIView.animate(withDuration: 2.0) {
                self.hippo.alpha = 1
            }
            
            // 顯示背景
            self.blurEffectBG.alpha = 1.0
            
            // 虛化背景，並且為.dark
            let blufEffect = UIBlurEffect(style: .dark)
            let blurEffectView = UIVisualEffectView(effect: blufEffect)
            blurEffectView.frame = self.view.bounds
            self.blurEffectBG.addSubview(blurEffectView)
            
            self.clickTemp = true
            
        } else if clickTemp == true {
            // 設定只能執行1次
            let alertController = UIAlertController(title: "你已經執行過1次", message: nil, preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertController.addAction(alertAction)
            self.present(alertController, animated: true, completion: nil)
        }
    }
}

