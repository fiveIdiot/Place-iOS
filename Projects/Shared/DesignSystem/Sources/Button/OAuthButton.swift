//
//  OAuthButton.swift
//  DesignSystem
//
//  Created by 선민재 on 7/22/24.
//  Copyright © 2024 fiveIdiot. All rights reserved.
//

import SwiftUI

public struct OAuthButton: ViewModifier {
    private let buttonTitle: String
    private let buttonIcon: Image
    private let buttonTitleColor: Color
    
    public init(
        buttonTitle: String,
        buttonIcon: Image,
        buttonTitleColor: Color
    ) {
        self.buttonTitle = buttonTitle
        self.buttonIcon = buttonIcon
        self.buttonTitleColor = buttonTitleColor
    }
    
    public func body(content: Content) -> some View {
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
}

