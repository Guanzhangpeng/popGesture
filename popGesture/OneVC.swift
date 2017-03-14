//
//  OneVC.swift
//  popGesture
//
//  Created by 管章鹏 on 17/3/14.
//  Copyright © 2017年 stw. All rights reserved.
//

import UIKit

class OneVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    
    @IBAction func btnClick(_ sender: Any) {
        
        navigationController?.pushViewController(TwoVC(), animated: true)
    }

}
