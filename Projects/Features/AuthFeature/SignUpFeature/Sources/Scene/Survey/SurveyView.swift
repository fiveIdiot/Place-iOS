//
//  SurveyView.swift
//  SignUpFeature
//
//  Created by 선민재 on 7/29/24.
//  Copyright © 2024 fiveIdiot. All rights reserved.
//

import SwiftUI

import BaseFeature
import DesignSystem

struct SurveyView: View {
    
    private let viewModel: SurveyViewModel
    
    init(viewModel: SurveyViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        ZStack {
            DesignSystemAsset.PlaceColor.grey11.swiftUIColor
                .ignoresSafeArea()
            
            VStack {
                PlaceNavigationView()
                    .frame(height: 48)
                
                Text("설문 조사 1,")
                    .font(PlaceFontSystem.subHeadline1)
                    .foregroundStyle(DesignSystemAsset.PlaceColor.white.swiftUIColor)
                    .lineLimit(1)
                    .padding(.top, 16)
                                
                Text("친구에게 내일 놀자는 카톡을 받았다.\n어디서 만나자 할까?")
                    .font(PlaceFontSystem.subHeadline3)
                    .foregroundStyle(DesignSystemAsset.PlaceColor.grey6.swiftUIColor)
                    .lineLimit(2)
                    .padding(.top, 8)
                    .multilineTextAlignment(.center)
                                
                DesignSystemAsset.PlaceImage.dummyImage.swiftUIImage
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity, maxHeight: 343)
                    .cornerRadius(8)
                    .padding(.leading, 16)
                    .padding(.trailing, 16)
                    .padding(.top, 32)
                
                Spacer()
                
                Spacer()
            }
        }
    }
}
