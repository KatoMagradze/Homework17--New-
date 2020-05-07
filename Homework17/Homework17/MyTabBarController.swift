//
//  MyTabBarController.swift
//  Homework17
//
//  Created by Kato on 5/7/20.
//  Copyright © 2020 TBC. All rights reserved.
//

import UIKit

class MyTabBarController: UITabBarController {
    
   

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.delegate = self
        if isKeyPresentInUserDefaults(key: "UserSelectedIndex") {
            self.selectedIndex = UserDefaults.standard.integer(forKey: "UserSelectedIndex")
        }
        else {
            self.selectedIndex = 1
        }
    }
    
    
    func isKeyPresentInUserDefaults(key: String) -> Bool {
        return UserDefaults.standard.object(forKey: key) != nil
    }

}

extension MyTabBarController: UITabBarControllerDelegate {
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        UserDefaults.standard.set(tabBarController.selectedIndex, forKey: "UserSelectedIndex")
       // print(#function)
    }
    
    func tabBarController(_ tabBarController: UITabBarController, animationControllerForTransitionFrom fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        
        print(fromVC)
        print(toVC)
        
        return nil
    }
    
}



