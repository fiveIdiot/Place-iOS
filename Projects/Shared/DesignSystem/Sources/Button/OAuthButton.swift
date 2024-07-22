//
//  OAuthButton.swift
//  DesignSystem
//
//  Created by 선민재 on 7/22/24.
//  Copyright © 2024 fiveIdiot. All rights reserved.
//

import SwiftUI

public struct OAuthButton: View {
    private let buttonTitle: String
    private let buttonIcon: Image
    private let buttonTitleColor: Color
    private let buttonBackgroundColor: Color
    
    public init(
        buttonTitle: String,
        buttonIcon: Image,
        buttonTitleColor: Color,
        buttonBackgroundColor: Color
    ) {
        self.buttonTitle = buttonTitle
        self.buttonIcon = buttonIcon
        self.buttonTitleColor = buttonTitleColor
        self.buttonBackgroundColor = buttonBackgroundColor
    }
    
    public var body: some View {
        Button(action: {
        }) {
            ZStack {
                HStack {
                    buttonIcon
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 24, height: 24)
                        .padding(.leading, 16)
                    
                    Spacer()
                }
                
                Text(buttonTitle)
                    .font(PlaceFontSystem.subHeadline3)
                    .foregroundColor(buttonTitleColor)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: 48)
        .background(buttonBackgroundColor)
        .cornerRadius(8)
        .padding(.top, 12)
        .padding(.leading, 16)
        .padding(.trailing, 16)
    }
}

