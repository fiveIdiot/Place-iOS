//
//  OAuthView.swift
//  SignInFeature
//
//  Created by 선민재 on 7/17/24.
//  Copyright © 2024 fiveIdiot. All rights reserved.
//

import SwiftUI

import BaseFeature
import DesignSystem

struct OAuthView: View {
    var body: some View {
        ZStack {
            DesignSystemAsset.PlaceColor.grey11.swiftUIColor
                .ignoresSafeArea()
            
            VStack {
                Text("간편 로그인으로\n간단하게")
                    .font(PlaceFontSystem.headline2)
                    .tint(DesignSystemAsset.PlaceColor.black.swiftUIColor)
                    .background(.clear)
                    .fixedSize(horizontal: false, vertical: true)
            }
        }
    }
}
