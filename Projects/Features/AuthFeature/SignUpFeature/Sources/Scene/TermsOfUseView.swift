//
//  TermsOfUseView.swift
//  SignUpFeature
//
//  Created by 선민재 on 7/18/24.
//  Copyright © 2024 fiveIdiot. All rights reserved.
//

import SwiftUI
import Lottie

import BaseFeature
import DesignSystem

struct TermsOfUseView: View {
    private let viewModel: TermsOfUseViewModel
    
    init(viewModel: TermsOfUseViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        ZStack {
            DesignSystemAsset.PlaceColor.grey11.swiftUIColor
                .ignoresSafeArea()
            
            VStack {
                PlaceNavigationView()
            }
        }
    }
}
