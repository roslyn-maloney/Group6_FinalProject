//
//  SceneDelegate.swift
//  RyūKoi
//
//  Created by R M on 11/13/25.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        print("🔵 SceneDelegate scene method called")
        guard let windowScene = (scene as? UIWindowScene) else {
            print("❌ Failed to cast to UIWindowScene")
            return
        }
        
        print("🔵 Creating window")
        window = UIWindow(windowScene: windowScene)
        
        print("🔵 Creating PreferenceViewController")
        let preferenceVC = PreferenceViewController()
        let navController = UINavigationController(rootViewController: preferenceVC)
        
        window?.rootViewController = navController
        window?.makeKeyAndVisible()
        print("🔵 Window setup complete")
    }

    func sceneDidDisconnect(_ scene: UIScene) {
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
    }

    func sceneWillResignActive(_ scene: UIScene) {
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
    }
}

