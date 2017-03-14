//
//  ViewController.swift
//  popGesture
//
//  Created by 管章鹏 on 17/3/14.
//  Copyright © 2017年 stw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        title = "全屏Pop"
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        navigationController?.pushViewController(OneVC(), animated: true)
    }


}

