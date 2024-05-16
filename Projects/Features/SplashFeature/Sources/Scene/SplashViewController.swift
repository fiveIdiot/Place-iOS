//
//  SplashViewController.swift
//  SplashFeature
//
//  Created by 선민재 on 5/12/24.
//  Copyright © 2024 fiveIdiot. All rights reserved.
//

import UIKit
import SnapKit
import Lottie

import BaseFeature
import DesignSystem

final class SplashViewController: BaseViewController {
    private let splashAnimationView: LottieAnimationView = {
        let view = LottieAnimationView()
        view.animation = AnimationAsset.splashAnimationLottie.animation
        view.loopMode = .loop
        view.animationSpeed = 1
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        self.view.backgroundColor = DesignSystemAsset.grey11.color
        self.splashAnimationView.play()
    }
    
    override func addSubviews() {
        self.view.addSubview(splashAnimationView)
    }
    
    override func setLayout() {
        splashAnimationView.snp.makeConstraints {
            $0.center.equalToSuperview()
            $0.width.height.equalTo(120)
        }
    }
}
