//
//  MainTabViewController.swift
//  playmysport.in
//
//  Created by Arjun Busani on 8/9/15.
//  Copyright (c) 2015 Yati. All rights reserved.
//

import UIKit

class MainTabViewController: UITabBarController {

    
    var screenWidth = UIScreen.mainScreen().bounds.width/3
    var screenWidthActual = UIScreen.mainScreen().bounds.width
    

    override func viewDidLoad() {
        super.viewDidLoad()

        UITabBar.appearance().backgroundImage = UIImage(named: "tab bar")
        self.tabBar.barStyle = UIBarStyle.Default
        self.tabBar.translucent = true
        self.tabBar.shadowImage = UIImage()

        let size = CGSizeMake(screenWidth, self.tabBar.bounds.height+10)
        
        var tabArray = self.tabBar.items as NSArray!



//        (tabs.tabBar.items![0] as! UITabBarItem ).image = fImage
//        (tabs.tabBar.items![0] as! UITabBarItem ).selectedImage = fImageSel
//        (tabs.tabBar.items![0] as! UITabBarItem ).title = ""
//

        // Do any additional setup after loading the view.
    }


    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
