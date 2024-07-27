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
    private let viewModel: OAuthViewModel
    
    init(viewModel: OAuthViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        ZStack {
            DesignSystemAsset.PlaceColor.grey11.swiftUIColor
                .ignoresSafeArea()
            
            VStack {
                PlaceNavigationView()
                
                HStack {
                    Text("간편 로그인으로\n간단하게")
                        .font(PlaceFontSystem.headline2)
                        .foregroundStyle(DesignSystemAsset.PlaceColor.white.swiftUIColor)
                        .lineLimit(2)
                        .padding(.leading, 16)
                    Spacer()
                }
                .padding(.top, 16)
                
                Button(action: {
                    self.viewModel.moveToSignUpView()
                }) {}
                    .buttonStyle(OAuthButton(
                        buttonTitle: "구글로 시작하기",
                        buttonIcon: DesignSystemAsset.PlaceImage.googleIcon.swiftUIImage,
                        buttonTitleColor: DesignSystemAsset.PlaceColor.black.swiftUIColor
                    ))
                    .frame(maxWidth: .infinity, maxHeight: 48)
                    .background(DesignSystemAsset.PlaceColor.google.swiftUIColor)
                    .cornerRadius(8)
                    .padding(.top, 12)
                    .padding(.leading, 16)
                    .padding(.trailing, 16)

                Button(action: {
                    self.viewModel.moveToSignUpView()
                }) {}
                    .buttonStyle(OAuthButton(
                        buttonTitle: "카카오로 시작하기",
                        buttonIcon: DesignSystemAsset.PlaceImage.kakaoIcon.swiftUIImage,
                        buttonTitleColor: DesignSystemAsset.PlaceColor.black.swiftUIColor
                    ))
                    .frame(maxWidth: .infinity, maxHeight: 48)
                    .background(DesignSystemAsset.PlaceColor.kakao.swiftUIColor)
                    .cornerRadius(8)
                    .padding(.top, 12)
                    .padding(.leading, 16)
                    .padding(.trailing, 16)
                
                Button(action: {
                    self.viewModel.moveToSignUpView()
                }) {}
                    .buttonStyle(OAuthButton(
                        buttonTitle: "애플로 시작하기",
                        buttonIcon: DesignSystemAsset.PlaceImage.appleIcon.swiftUIImage,
                        buttonTitleColor: DesignSystemAsset.PlaceColor.white.swiftUIColor
                    ))
                    .frame(maxWidth: .infinity, maxHeight: 48)
                    .background(DesignSystemAsset.PlaceColor.apple.swiftUIColor)
                    .cornerRadius(8)
                    .padding(.top, 12)
                    .padding(.leading, 16)
                    .padding(.trailing, 16)
                
                Spacer()
                
                Spacer()
            }
        }
        .toolbar(.hidden)
    }
}
