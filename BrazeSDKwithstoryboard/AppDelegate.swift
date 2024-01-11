//
//  AppDelegate.swift
//  BrazeSDKwithstoryboard
//
//  Created by Ryan Dusenbury on 1/10/24.
//

import UIKit
import BrazeKit
import BrazeKitCompat

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    static var braze: Braze? = nil

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let configuration = Braze.Configuration(
              apiKey: "a204919a-1a75-4502-af3c-4e786881e67b",
              endpoint: "sondheim.braze.com"
        )
        let braze = Braze(configuration: configuration)
        configuration.logger.level = .debug
        AppDelegate.braze = braze
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

