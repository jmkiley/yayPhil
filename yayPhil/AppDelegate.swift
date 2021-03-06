//
//  AppDelegate.swift
//  yayPhil
//
//  Created by Jordan Kiley on 9/28/16.
//  Copyright © 2016 Jordan Kiley. All rights reserved.
//

import UIKit
import UserNotifications
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, UNUserNotificationCenterDelegate {
    
    var window: UIWindow?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        getNotificationsPermission()
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    func checkIfIos10() -> Bool {
        if #available(iOS 10, *) {
            print("has iOS 10")
            return true
        } else {
            print("does not have iOS 10")
            return false
        }
    }
    
    func getNotificationsPermission() {
        if checkIfIos10() {
            let center = UNUserNotificationCenter.current()
            center.delegate = self
            center.requestAuthorization(options: .alert) { (granted, error) in
                if granted {
                    print("YAY!")
                } else {
                    print(error)
                }
            }
        } else {
            
        }
        
    }
    
}

