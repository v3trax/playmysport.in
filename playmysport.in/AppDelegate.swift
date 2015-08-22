//
//  AppDelegate.swift
//  playmysport.in
//
//  Created by Arjun Busani on 8/9/15.
//  Copyright (c) 2015 Yati. All rights reserved.
//

import UIKit
import Fabric
import Crashlytics

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    
    var screenWidth = UIScreen.mainScreen().bounds.width/3
    var screenWidthActual = UIScreen.mainScreen().bounds.width
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        Fabric.with([Crashlytics()])

        UIApplication.sharedApplication().setStatusBarStyle(.LightContent, animated: false)
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)

        var nav1 = MainNavigationViewController()
        var first = HomeScreenViewController(nibName: nil, bundle: nil)
        nav1.viewControllers = [first]
        
        var second = FavViewController(nibName: nil, bundle: nil)
        var nav2 = MainNavigationViewController()
        nav2.viewControllers = [second]
        
        var third = AccountViewController(nibName: nil, bundle: nil)
        var nav3 = MainNavigationViewController()
        nav3.viewControllers = [third]
        
        var tabs = MainTabViewController()
        tabs.viewControllers = [nav1, nav2, nav3]
        
        let size = CGSizeMake(screenWidth, tabs.tabBar.bounds.height+10)
        var tabArray = tabs.tabBar.items as NSArray!
        
        var fImage = imageResize(image: UIImage(named: "home")!, sizeChange: size)
        var fImageSel = imageResize(image: UIImage(named: "home sel")!, sizeChange: size)
        
        fImage = fImage.imageWithRenderingMode(.AlwaysOriginal)
        fImageSel = fImageSel.imageWithRenderingMode(.AlwaysOriginal)
        
        var tabItem = tabArray.objectAtIndex(0) as! UITabBarItem
        tabItem.image = fImage
        tabItem.selectedImage = fImageSel
        tabItem.title = ""
        
        var fImage1 = imageResize(image: UIImage(named: "fav")!, sizeChange: size)
        var fImageSel1 = imageResize(image: UIImage(named: "fav sel")!, sizeChange: size)
        
        fImage1 = fImage1.imageWithRenderingMode(.AlwaysOriginal)
        fImageSel1 = fImageSel1.imageWithRenderingMode(.AlwaysOriginal)
        
        var tabItem1 = tabArray.objectAtIndex(1) as! UITabBarItem
        tabItem1.image = fImage1
        tabItem1.selectedImage = fImageSel1
        tabItem1.title = ""
        
        
        var fImage2 = imageResize(image: UIImage(named: "account")!, sizeChange: size)
        var fImageSel2 = imageResize(image: UIImage(named: "account sel")!, sizeChange: size)
        
        fImage2 = fImage2.imageWithRenderingMode(.AlwaysOriginal)
        fImageSel2 = fImageSel2.imageWithRenderingMode(.AlwaysOriginal)
        
        var tabItem2 = tabArray.objectAtIndex(2) as! UITabBarItem
        tabItem2.image = fImage2
        tabItem2.selectedImage = fImageSel2
        tabItem2.title = ""

        self.window!.rootViewController = tabs;
        self.window?.makeKeyAndVisible();
        
        return true
    }
    
    func imageResize (#image:UIImage, sizeChange:CGSize)-> UIImage{
        
        let hasAlpha = true
        let scale: CGFloat = 0.0 // Use scale factor of main screen
        
        UIGraphicsBeginImageContextWithOptions(sizeChange, !hasAlpha, scale)
        image.drawInRect(CGRect(origin: CGPointZero, size: sizeChange))
        
        let scaledImage = UIGraphicsGetImageFromCurrentImageContext()
        return scaledImage
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

