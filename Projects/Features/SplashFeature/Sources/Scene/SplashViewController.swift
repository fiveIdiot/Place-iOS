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
    private let viewModel: SplashViewModel
    
    private let splashAnimationView: LottieAnimationView = {
        let view = LottieAnimationView()
        view.animation = AnimationAsset.splashAnimationLottie.animation
        view.loopMode = .loop
        view.animationSpeed = 1
        return view
    }()
    
    private func moveToNextStep() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.6) {
            self.viewModel.moveToTabBarController()
        }
    }
    
    init(with viewModel: SplashViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        self.view.backgroundColor = DesignSystemAsset.PlaceColor.grey11.color
        self.splashAnimationView.play()
        self.moveToNextStep()
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
