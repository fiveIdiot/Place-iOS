//
//  SceneDelegate.swift
//  ProjectDescriptionHelpers
//
//  Created by 선민재 on 2/26/24.
//

import UIKit
import RxFlow
import RxCocoa

import RootFeature

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var coordinator = FlowCoordinator()

    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: windowScene)
        let appFlow = AppFlow(window: window)
//        let splashViewController = SplashViewController()
//        
//        window.rootViewController = splashViewController
//        window.makeKeyAndVisible()
        
        self.window = window
        self.coordinator.coordinate(flow: appFlow, with: AppStepper())
    }

    func sceneDidDisconnect(_ scene: UIScene) {}

    func sceneDidBecomeActive(_ scene: UIScene) {}

    func sceneWillResignActive(_ scene: UIScene) {}

    func sceneWillEnterForeground(_ scene: UIScene) {}

    func sceneDidEnterBackground(_ scene: UIScene) {}
}
