//
//  AppDelegate.swift
//  FitPrzepisy 2
//
//  Created by zari on 24/05/2020.
//  Copyright © 2020 zari. All rights reserved.
//

import UIKit
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        FirebaseApp.configure()
        
        let db = Firestore.firestore();
        
//        let title = "Kurczak pieczony"
//        let glutenFree = true
//        let lactoseFree = false
//        let wege = false
//        let favorite = true
//        let ingredients = [500: "kurczaka", 200: "makaron", 300: "śmietany"]
//        let preparing = "Kurczaka ugotować, dodać makaron i wymieszać, dodać śmietane"
        
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

