//
//  ZPNavigationController.swift
//  popGesture
//
//  Created by 管章鹏 on 17/3/14.
//  Copyright © 2017年 stw. All rights reserved.
//

import UIKit

class ZPNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        // 1.校验手势是否有值
        // target/action
        guard let interactionGes = interactivePopGestureRecognizer else {
            return
        }
        
        // 2.通过运行时机制找到对应想要的属性
        /*
         var count : UInt32 = 0
         let ivars = class_copyIvarList(UIGestureRecognizer.self, &count)!
         for i in 0..<count {
         let ivar = ivars[Int(i)]
         let nameP = ivar_getName(ivar)
         let name = String(cString: nameP!)
         print(name)
         }
         */
        guard let values = interactionGes.value(forKeyPath: "_targets") as? [NSObject] else {
            return
        }
        guard let objc = values.first else {
            return
        }
        
        // 3.取出action/target
        // print(objc)
        let target = objc.value(forKeyPath: "target")
        let action = Selector(("handleNavigationTransition:"))
      //let action = objc.value(forKeyPath: "action") as? Selector
        
        // 2.创建自己的收拾
        let panGes = UIPanGestureRecognizer(target: target, action: action)
        view.addGestureRecognizer(panGes)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        viewController.hidesBottomBarWhenPushed = true
        super.pushViewController(viewController, animated: animated)
    }
}
