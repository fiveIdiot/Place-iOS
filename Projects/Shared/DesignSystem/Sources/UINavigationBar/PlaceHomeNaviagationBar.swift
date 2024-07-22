//
//  PlaceHomeNaviagationBar.swift
//  DesignSystem
//
//  Created by 선민재 on 5/16/24.
//  Copyright © 2024 fiveIdiot. All rights reserved.
//

import UIKit
import SnapKit

open class PlaceHomeNaviagationBar: UIView {
    private let navigationBarImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = DesignSystemAsset.PlaceImage.placeLogo.image
        return imageView
    }()
    
    private let searchButton: UIButton = {
        let button = UIButton()
        button.setImage(DesignSystemAsset.PlaceImage.placeSearchIcon.image, for: .normal)
        return button
    }()
    
    private let filterButton: UIButton = {
        let button = UIButton()
        button.setImage(DesignSystemAsset.PlaceImage.placeFilterIcon.image, for: .normal)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .clear
        
        self.addSubviews()
        self.setLayout()
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension PlaceHomeNaviagationBar {
    private func addSubviews() {
        [
            navigationBarImage,
            searchButton,
            filterButton
        ].forEach {
            self.addSubview($0)
        }
    }
    
    private func setLayout() {
        navigationBarImage.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.left.equalToSuperview().offset(16)
        }
        
        searchButton.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.right.equalToSuperview().inset(16)
        }
        
        filterButton.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.right.equalTo(searchButton.snp.left).offset(-8)
        }
    }
}
