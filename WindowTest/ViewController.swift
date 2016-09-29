//
//  ViewController.swift
//  WindowTest
//
//  Created by wuguanyu on 16/9/29.
//  Copyright © 2016年 wuguanyu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    lazy var statusBarAlert: UIWindow = {
        let originFrame = CGRect(x: 0, y: -20, width: self.screenWidth, height: 20)
        let statusBarWindow = UIWindow(frame: originFrame)
        statusBarWindow.backgroundColor = UIColor.blueColor()
        statusBarWindow.hidden = false
        statusBarWindow.windowLevel = UIWindowLevelAlert

        return statusBarWindow
    }()

    let screenWidth = UIScreen.mainScreen().bounds.size.width

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func showStatusBarAlert(sender: AnyObject) {
        UIView.animateWithDuration(1.1, animations: {
            // show
            self.statusBarAlert.frame = CGRect(x: 0, y: 0, width: self.screenWidth, height: 20)
        }) { (finished) in
            // hide
            UIView.animateWithDuration(0.7, animations: {
                self.statusBarAlert.frame = CGRect(x: 0, y: -20, width: self.screenWidth, height: 20)
                }, completion: { (finished) in
                    
            })
        }
    }

}
