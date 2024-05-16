//
//  PlaceTabBarController.swift
//  TabBarFeature
//
//  Created by 선민재 on 4/2/24.
//  Copyright © 2024 fiveIdiot. All rights reserved.
//

import UIKit

import DesignSystem

final class PlaceTabBarController: UITabBarController {
    
    init() {
        super.init(nibName: nil, bundle: nil)
        self.configureVC()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}

private extension PlaceTabBarController {
    func configureVC() {
        tabBar.tintColor = DesignSystemAsset.grey7.color
        tabBar.unselectedItemTintColor = DesignSystemAsset.white.color
        tabBar.backgroundColor = DesignSystemAsset.grey10.color
        tabBar.layer.cornerRadius = 10
    }
}
