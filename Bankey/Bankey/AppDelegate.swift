//
//  AppDelegate.swift
//  Bankey
//
//  Created by Oleksii Leshchenko on 08.09.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
   

    var window: UIWindow?
    
    let loginViewController = LoginViewController()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .systemBackground
        loginViewController.delegate = self
        window?.rootViewController = loginViewController
        return true
    }
}

extension AppDelegate: LoginViewControllerDelegate {
    func didLogin() {
        print("😜 Did Login")
    }
}

