//
//  AppDelegate.swift
//  FlutterMixed
//  
//  Created by ash on 2020/5/13.
//  Copyright © 2020 ash. All rights reserved.
//
    

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow? = UIWindow.init(frame: UIScreen.main.bounds)
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let router = PlatformRouterImp.init();
        FlutterBoostPlugin.sharedInstance().startFlutter(with: router, onStart: { (engine) in
            
        });
        
        let navi = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateInitialViewController()
        self.window?.rootViewController = navi
        self.window?.makeKeyAndVisible()
        return true
    }


}

