//
//  AppDelegate.swift
//  Football Streamer
//
//  Created by Erik Andresen on 28/09/2019.
//  Copyright © 2019 Shabibi. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        createFirstScene()
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
    }

    func applicationWillTerminate(_ application: UIApplication) {
    }
    
    private func createFirstScene() {
        window = UIWindow(frame: UIScreen.main.bounds)
        let menuViewController = MenuViewController()
        let navigationController = UINavigationController()
        navigationController.navigationBar.configure(bgColor: .customGreen, tintColor: .customWhite, font: UIFont(name: "AvenirNext-Bold", size: 22)!, fontColor: .customWhite)
        navigationController.viewControllers = [menuViewController]
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
}

