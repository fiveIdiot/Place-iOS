//
//  SplashView.swift
//  SplashFeature
//
//  Created by 선민재 on 5/12/24.
//  Copyright © 2024 fiveIdiot. All rights reserved.
//

import SwiftUI
import SnapKit
import Lottie

import BaseFeature
import DesignSystem

struct SplashView: View {
    let viewModel: SplashViewModel
    
    var body: some View {
        ZStack {
            DesignSystemAsset.PlaceColor.grey11.swiftUIColor
            VStack {
                LottieView(animation: AnimationAsset.splashAnimationLottie.animation)
                    .looping()
                    .animationSpeed(1)
                    .frame(width: 120, height: 120)
            }
        }
        .ignoresSafeArea()
        
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.6) {
                self.viewModel.moveToTabBarController()
            }
        }
    }
}
