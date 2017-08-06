//
//  AppDelegate.swift
//  Rejuve
//
//  Created by Justin Rose on 7/4/17.
//  Copyright © 2017 justncode. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        
        if let font = UIFont(name: "Helvetica", size: 17.0) {
            UINavigationBar.appearance().titleTextAttributes = [NSAttributedStringKey.font.rawValue: font,
                                                                NSAttributedStringKey.foregroundColor.rawValue: UIColor.white]
        }
        
        // Sounds
        let sounds = [
            Sound("Going Higher", fileURL: "bensound-goinghigher", type: "mp3"),
            Sound("Energy", fileURL: "bensound-energy", type: "mp3"),
            Sound("Memories", fileURL: "bensound-memories", type: "mp3"),
            Sound("Ukulele", fileURL: "bensound-ukulele", type: "mp3"),
            Sound("Better Days", fileURL: "bensound-betterdays", type: "mp3"),
            Sound("A New Beginning", fileURL: "bensound-anewbeginning", type: "mp3"),
            Sound("Happy Rock", fileURL: "bensound-happyrock", type: "mp3"),
            Sound("Jazzy Frenchy", fileURL: "bensound-jazzyfrenchy", type: "mp3")
        ]
        
        // Create a SoundStore
        let soundStore = SoundStore(sounds)
        
        let soundController = window!.rootViewController as! ViewController
        soundController.soundStore = soundStore
        
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


}
