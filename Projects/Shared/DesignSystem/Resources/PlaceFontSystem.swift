//
//  PlaceFontSystem.swift
//  DesignSystem
//
//  Created by 선민재 on 3/20/24.
//  Copyright © 2024 fiveIdiot. All rights reserved.
//

import Foundation

public enum PlaceFontSystem {
    public static let hero = DesignSystemFontFamily.NotoSansKR.bold.font(size: 48)
    
    public static let headline1 = DesignSystemFontFamily.NotoSansKR.semiBold.font(size: 32)
    public static let headline2 = DesignSystemFontFamily.NotoSansKR.semiBold.font(size: 28)
    
    public static let subHeadline1 = DesignSystemFontFamily.NotoSansKR.semiBold.font(size: 24)
    public static let subHeadline2 = DesignSystemFontFamily.NotoSansKR.semiBold.font(size: 20)
    
    public static let button = DesignSystemFontFamily.NotoSansKR.semiBold.font(size: 16)
    
    public static let body1 = DesignSystemFontFamily.NotoSansKR.medium.font(size: 15)
    public static let body2 = DesignSystemFontFamily.NotoSansKR.medium.font(size: 14)
    
    public static let caption1 = DesignSystemFontFamily.NotoSansKR.regular.font(size: 12)
    public static let caption2 = DesignSystemFontFamily.NotoSansKR.regular.font(size: 11)
}
