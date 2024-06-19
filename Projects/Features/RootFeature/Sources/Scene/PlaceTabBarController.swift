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
        tabBar.tintColor = DesignSystemAsset.PlaceColor.white.color
        tabBar.unselectedItemTintColor = DesignSystemAsset.PlaceColor.grey7.color
        tabBar.backgroundColor = DesignSystemAsset.PlaceColor.grey10.color
        tabBar.layer.cornerRadius = 10
    }
}
