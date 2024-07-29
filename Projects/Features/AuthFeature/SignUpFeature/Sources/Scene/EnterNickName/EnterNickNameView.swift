//
//  EnterNickNameView.swift
//  SignUpFeature
//
//  Created by 선민재 on 7/29/24.
//  Copyright © 2024 fiveIdiot. All rights reserved.
//

import SwiftUI

import BaseFeature
import DesignSystem
import Util

struct EnterNickNameView: View {
    private let viewModel: EnterNickNameViewModel
    
    @State private var name: String = ""
    
    init(viewModel: EnterNickNameViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        ZStack {
            DesignSystemAsset.PlaceColor.grey11.swiftUIColor
                .ignoresSafeArea()
            
            VStack {
                PlaceNavigationView()
                
                HStack {
                    Text("검사 전 사용하실 닉네임을\n입력해주세요")
                        .font(PlaceFontSystem.headline2)
                        .foregroundStyle(DesignSystemAsset.PlaceColor.white.swiftUIColor)
                        .lineLimit(2)
                        .padding(.leading, 16)
                    
                    Spacer()
                
                }
                .padding(.top, 16)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .fill(DesignSystemAsset.PlaceColor.grey10.swiftUIColor)
                        .frame(height: 48)
                    
                    TextField("", text: $name)
                        .placeholder(when: name.isEmpty) {
                                Text("닉네임을 입력해주세요.").foregroundColor(DesignSystemAsset.PlaceColor.grey7.swiftUIColor)
                        }
                        .font(PlaceFontSystem.body2)
                        .foregroundColor(DesignSystemAsset.PlaceColor.white.swiftUIColor)
                        .padding(.horizontal, 16)
                        .frame(height: 48)
                        .textFieldStyle(PlainTextFieldStyle())
                }
                .padding(.top, 16)
                .padding(.horizontal, 16)
                
                Spacer()
                
                Spacer()
                
                Button(action: {
//                    self.viewModel.moveToEnterNickNameView()
                }) {
                    Text("다음")
                        .padding()
                        .frame(maxWidth: .infinity, maxHeight: 48)
                        .font(PlaceFontSystem.subHeadline3)
                        .tint(DesignSystemAsset.PlaceColor.black.swiftUIColor)
                        .background(DesignSystemAsset.PlaceColor.orange5.swiftUIColor)
                        .cornerRadius(8)
                }
                .padding(.leading, 16)
                .padding(.trailing, 16)
                .padding(.bottom, 16)
            }
        }
    }
}
