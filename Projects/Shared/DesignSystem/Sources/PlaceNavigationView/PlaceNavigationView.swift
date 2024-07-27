//
//  PlaceNavigationView.swift
//  DesignSystem
//
//  Created by 선민재 on 7/18/24.
//  Copyright © 2024 fiveIdiot. All rights reserved.
//

import SwiftUI

public struct PlaceNavigationView: View {
    public var body: some View {
        HStack {
            Button(action: {
                
            }, label: {
                DesignSystemAsset.PlaceImage.arrowRight.swiftUIImage
            })
            .padding(.leading, 16)
            
            Spacer()
        }
    }
    
    public init() {}
}
