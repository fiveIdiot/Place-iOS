//
//  SceneDelegate.swift
//  ProjectDescriptionHelpers
//
//  Created by 선민재 on 2/26/24.
//

import UIKit
import RxFlow

import RxSwift
import RxCocoa

import RootFeature

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var coordinator = FlowCoordinator()
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        self.coordinateToAppFlow(with: windowScene)
    }
    
    private func coordinateToAppFlow(with scene: UIWindowScene) {
        let window = UIWindow(windowScene: scene)
        
        self.window = window
        window.rootViewController = UIViewController()
        window.makeKeyAndVisible()
        
        let appFlow = AppFlow(window: window)
        let appStepper = AppStepper()
        
        self.coordinator.coordinate(flow: appFlow, with: appStepper)
    }

    func sceneDidDisconnect(_ scene: UIScene) {}

    func sceneDidBecomeActive(_ scene: UIScene) {}

    func sceneWillResignActive(_ scene: UIScene) {}

    func sceneWillEnterForeground(_ scene: UIScene) {}

    func sceneDidEnterBackground(_ scene: UIScene) {}
}
