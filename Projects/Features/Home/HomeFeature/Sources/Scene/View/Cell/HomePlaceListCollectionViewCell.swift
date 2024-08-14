//
//  HomePlaceListCollectionViewCell.swift
//  HomeFeature
//
//  Created by 선민재 on 5/28/24.
//  Copyright © 2024 fiveIdiot. All rights reserved.
//

import UIKit
import SnapKit
import Lottie

import DesignSystem

final class HomePlaceListCollectionViewCell: UICollectionViewCell {
    static let cellIdentifier = "HomePlaceListCollectionViewCell"

    private let userProfileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 17
        imageView.clipsToBounds = false
        return imageView
    }()
    
    private let userNickNameLabel: UILabel = {
        let label = UILabel()
        label.font = DesignSystemFontFamily.NotoSansKR.semiBold.font(size: 14)
        label.textColor = DesignSystemAsset.PlaceColor.white.color
        return label
    }()
    
    private let visitorCountLabel: UILabel = {
        let label = UILabel()
        label.text = "1명에서 방문"
        label.font = DesignSystemFontFamily.NotoSansKR.medium.font(size: 13)
        label.textColor = DesignSystemAsset.PlaceColor.grey6.color
        return label
    }()
}
