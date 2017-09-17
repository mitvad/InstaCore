//
//  AppDelegate.swift
//  InstaCore
//
//  Created by Vadym on 179//17.
//  Copyright © 2017 Vadym Mitin. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var rootNavigationController: UINavigationController?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        initWindow()
        initMainModule()
        
        return true
    }
    
    private func initWindow(){
        rootNavigationController = UINavigationController()
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = rootNavigationController
        window?.makeKeyAndVisible()
    }
    
    private func initMainModule(){
        let mainVC = MainViewController.fromStoryboard()
        let configurator = MainModuleConfigurator()
        configurator.configureModule(for: mainVC)
        
        rootNavigationController?.pushViewController(mainVC, animated: true)
    }
}

