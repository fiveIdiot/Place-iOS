//
//  SplashViewController.swift
//  SplashFeature
//
//  Created by 선민재 on 7/1/24.
//  Copyright © 2024 fiveIdiot. All rights reserved.
//

import SwiftUI

import SnapKit
import Lottie

import BaseFeature
import DesignSystem

struct SignInView: View {
    var body: some View {
        ZStack {
            DesignSystemAsset.PlaceColor.grey11.swiftUIColor
            VStack {
                Spacer()
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    Text("플레이스 시작하기")
                        .padding()
                        .frame(width: 335, height: 48)
                        .font(PlaceFontSystem.subHeadline3)
                        .tint(DesignSystemAsset.PlaceColor.black.swiftUIColor)
                        .background(DesignSystemAsset.PlaceColor.orange5.swiftUIColor)
                        .cornerRadius(8)
                }
            }
            .padding(.bottom, 50)
        }
        .ignoresSafeArea()
    }
}
