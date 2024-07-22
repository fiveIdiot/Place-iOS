//
//  HomeCurationChipsCollectionCell.swift
//  HomeFeature
//
//  Created by 선민재 on 5/17/24.
//  Copyright © 2024 fiveIdiot. All rights reserved.
//

import UIKit
import SnapKit
import Lottie

import DesignSystem

enum HomeCurationChipsCellType: Int {
    case recommended
    case hotPlace
    
    var cellAnimation: LottieAnimation? {
        switch self {
        case .recommended:
            return AnimationAsset.compassAnimation.animation
        case .hotPlace:
            return AnimationAsset.hotListAnimation.animation
        }
    }
    
    var cellTitle: String {
        switch self {
        case .recommended:
            return "맞춤"
        case .hotPlace:
            return "핫플"
        }
    }
    
    var gradientColors: [CGColor] {
        switch self {
        case .recommended:
            return [
                .init(red: 29/255, green: 187/255, blue: 1, alpha: 1),
                .init(red: 197/255, green: 31/255, blue: 1, alpha: 1)
            ]
        case .hotPlace:
            return [
                .init(red: 235/255, green: 0, blue: 1, alpha: 1),
                .init(red: 1, green: 61/255, blue: 0, alpha: 1)
            ]
        }
    }
    
    var changedColors: [CGColor] {
        switch self {
        case .recommended:
            return [
                .init(red: 197/255, green: 31/255, blue: 1, alpha: 1),
                .init(red: 29/255, green: 187/255, blue: 1, alpha: 1)
             ]
            
        case .hotPlace:
            return [
                .init(red: 1, green: 61/255, blue: 0, alpha: 1),
                .init(red: 235/255, green: 0, blue: 1, alpha: 1)
             ]
        }
    }
}

final class HomeCurationChipsCollectionCell: UICollectionViewCell {
    static let cellIdentifier = "HomeCurationChipsCollectionCell"
    
    private let curationChipIconAnimation: LottieAnimationView = {
        let view = LottieAnimationView()
        view.loopMode = .playOnce
        view.animationSpeed = 1
        return view
    }()
    
    private let curationChipTitleLabel: UILabel = {
        let label = UILabel()
        label.textColor = DesignSystemAsset.PlaceColor.white.color
        label.font = DesignSystemFontFamily.NotoSansKR.semiBold.font(size: 20)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.cornerRadius = 22
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension HomeCurationChipsCollectionCell {
    func setCurationChipIconAnimation(_ animation: LottieAnimation) {
        self.curationChipIconAnimation.animation = animation
    }
    
    func setCurationChipTitle(_ title: String) {
        self.curationChipTitleLabel.text = title
    }
    
    private func startAnimation() {
        self.curationChipIconAnimation.play()
    }
    
    func setAnimationGradient(colors: [CGColor], changedColors: [CGColor]) {
        let gradientLayer: CAGradientLayer = {
            let layer = CAGradientLayer()
            layer.frame  = self.bounds
            layer.startPoint = CGPoint(x: 0.0, y: 0.0)
            layer.endPoint = CGPoint(x: 1.0, y: 1.0)
            layer.cornerRadius = 22
            layer.colors = colors
            return layer
        }()
        
        let colorAnimation: CABasicAnimation = {
            let animation = CABasicAnimation(keyPath: "colors")
            animation.toValue = changedColors
            animation.duration = 2
            animation.repeatCount = 2
            animation.autoreverses = true
            return animation
        }()
        
        gradientLayer.add(colorAnimation, forKey: "colorChangeAnimation")
        
        self.layer.addSublayer(gradientLayer)
        
        self.startAnimation()
        self.addSubviews()
        self.setLayout()
    }
}

extension HomeCurationChipsCollectionCell {
    private func addSubviews() {
        [
            curationChipIconAnimation,
            curationChipTitleLabel
        ].forEach {
            self.addSubview($0)
        }
    }
    
    private func setLayout() {
        curationChipIconAnimation.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.left.equalToSuperview().offset(12)
            $0.width.height.equalTo(24)
        }
        
        curationChipTitleLabel.snp.makeConstraints {
            $0.centerY.equalTo(curationChipIconAnimation.snp.centerY)
            $0.left.equalTo(curationChipIconAnimation.snp.right).offset(4)
        }
    }
}
