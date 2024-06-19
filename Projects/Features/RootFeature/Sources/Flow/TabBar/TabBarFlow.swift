//
//  TabBarFlow.swift
//  RootFeature
//
//  Created by 선민재 on 4/1/24.
//  Copyright © 2024 fiveIdiot. All rights reserved.
//

import RxFlow
import UIKit

import HomeFeature
import MapFeature
import WritePlaceFeature
import StoreHomeFeature
import ProfileFeature

import PlaceStep
import DesignSystem

final class TabBarFlow: Flow {
    
    var root: Presentable {
        return self.rootViewController
    }
    
    private let mainTabBarController = PlaceTabBarController()
    
    private lazy var rootViewController: UINavigationController = {
        let viewController = UINavigationController(rootViewController: mainTabBarController)
        return viewController
    }()
    
    private let homeFlow = HomeFlow()
    private let mapFlow = MapFlow()
    private let writePlaceFlow = WritePlaceFlow()
    private let storeFlow = StoreFlow()
    private let profileFlow = ProfileFlow()
    
    init() {}
    
    func navigate(to step: Step) -> FlowContributors {
        guard let step = step as? PlaceStep else {return .none}
        
        switch step {
        case .tabBarIsRequired:
            return coordinateToTabbar()
        default:
            return .none
        }
    }
}


private extension TabBarFlow {
    func coordinateToTabbar() -> FlowContributors {
        Flows.use(
            homeFlow, mapFlow, writePlaceFlow, storeFlow, profileFlow,
            when: .ready
        ) { [unowned self] (
            root1: UINavigationController,
            root2: UINavigationController,
            root3: UINavigationController,
            root4: UINavigationController,
            root5: UINavigationController
        ) in
            
            let homeItem = UITabBarItem(
                title: "홈",
                image: DesignSystemAsset.PlaceImage.homeIcon.image.withRenderingMode(.alwaysTemplate),
                selectedImage: UIImage(named: "selectedHome.svg")
            )
            
            let mapItem = UITabBarItem(
                title: "내 주변",
                image: DesignSystemAsset.PlaceImage.mapIcon.image.withRenderingMode(.alwaysTemplate),
                selectedImage: UIImage(named: "selectedHome.svg")
            )
            
            let writePlaceItem = UITabBarItem(
                title: "작성",
                image: DesignSystemAsset.PlaceImage.writeIcon.image.withRenderingMode(.alwaysTemplate),
                selectedImage: UIImage(named: "selectedOuting.svg")
            )
            
            let storeItem = UITabBarItem(
                title: "상점",
                image: DesignSystemAsset.PlaceImage.storeIcon.image.withRenderingMode(.alwaysTemplate),
                selectedImage: UIImage(named: "selectedOuting.svg")
            )
            
            let profileItem = UITabBarItem(
                title: "프로필",
                image: DesignSystemAsset.PlaceImage.profileIcon.image.withRenderingMode(.alwaysTemplate),
                tag: 4
            )
            
            root1.tabBarItem = homeItem
            root2.tabBarItem = mapItem
            root3.tabBarItem = writePlaceItem
            root4.tabBarItem = storeItem
            root5.tabBarItem = profileItem
            
            self.rootViewController.setViewControllers([mainTabBarController], animated: false)
            self.rootViewController.isNavigationBarHidden = true
            self.mainTabBarController.setViewControllers([root1,root2,root3,root4,root5], animated: true)
        }
        return .multiple(flowContributors: [
            .contribute(
                withNextPresentable: homeFlow,
                withNextStepper: OneStepper(withSingleStep: PlaceStep.homeIsRequired)
            ),
            .contribute(
                withNextPresentable: mapFlow,
                withNextStepper: OneStepper(withSingleStep: PlaceStep.mapIsRequired)
            ),
            .contribute(
                withNextPresentable: writePlaceFlow,
                withNextStepper: OneStepper(withSingleStep: PlaceStep.writePlaceIsRequired)
            ),
            .contribute(
                withNextPresentable: storeFlow,
                withNextStepper: OneStepper(withSingleStep: PlaceStep.storeIsRequired)
            ),
            .contribute(
                withNextPresentable: profileFlow,
                withNextStepper: OneStepper(withSingleStep: PlaceStep.profileIsRequired)
            )
        ])
    }
}
