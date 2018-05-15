//
//  AppDelegate.swift
//  Address1
//
//  Created by 503-46 on 2018/5/11.
//  Copyright © 2018年 503-46. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        self.window = UIWindow(frame: UIScreen.main.bounds)
        //reason: 'Application windows are expected to have a root view controller at the end of application launch'
        //self.window?.rootViewController = UIViewController()//background color
//        let vc = UIViewController()
////        vc.view.backgroundColor = UIColor(colorLiteralRed: 0.0, green: 0.0, blue: 1.0, alpha: 0.5)
////        vc.view.backgroundColor = UIColor(colorLiteralRed: 1.0, green: 0.0, blue: 1.0, alpha: 1.0)
//        vc.view.backgroundColor = UIColor.purple
//        self.window?.rootViewController = vc
        //MainUI.xib--->MainUI.nib SandBox
        let mainController = MainViewController(nibName: "MainUI", bundle: Bundle.main)
        self.window?.rootViewController = mainController

        self.window?.backgroundColor = UIColor.red
        self.window?.makeKeyAndVisible()
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
        print("ra")
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
        print("eb")
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
        print("ef")
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
        print("ba")
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

