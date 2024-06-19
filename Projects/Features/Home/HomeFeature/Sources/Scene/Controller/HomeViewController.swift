//
//  HomeViewController.swift
//  HomeFeature
//
//  Created by 선민재 on 3/31/24.
//  Copyright © 2024 fiveIdiot. All rights reserved.
//

import UIKit
import SnapKit
import Lottie

import BaseFeature
import DesignSystem

final class HomeViewController: BaseViewController {
    private let homeNavigationBar = PlaceHomeNaviagationBar()
    
    private let curationChipsCollectionView: UICollectionView = {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .vertical
        flowLayout.itemSize = CGSize(width: 91, height: 44)
        let view = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
        view.register(HomeCurationChipsCollectionCell.self, forCellWithReuseIdentifier: HomeCurationChipsCollectionCell.cellIdentifier)
        view.backgroundColor = .clear
        return view
    }()
    
    private let placeListCollectionView: UICollectionView = {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .vertical
        flowLayout.itemSize = CGSize(width: 91, height: 44)
        let view = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
        view.register(HomeCurationChipsCollectionCell.self, forCellWithReuseIdentifier: HomeCurationChipsCollectionCell.cellIdentifier)
        view.backgroundColor = .clear
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = DesignSystemAsset.PlaceColor.grey11.color
        self.curationChipsCollectionView.dataSource = self
    }
    
    override func addSubviews() {
        [
            homeNavigationBar,
            curationChipsCollectionView
        ].forEach {
            self.view.addSubview($0)
        }
    }
    
    override func setLayout() {
        homeNavigationBar.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            $0.left.right.equalToSuperview()
            $0.height.equalTo(46)
        }
        
        curationChipsCollectionView.snp.makeConstraints {
            $0.top.equalTo(homeNavigationBar.snp.bottom).offset(8)
            $0.left.right.equalToSuperview().inset(16)
            $0.height.equalTo(44)
        }
    }
}

extension HomeViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard
            let cell = collectionView.dequeueReusableCell(
                withReuseIdentifier: HomeCurationChipsCollectionCell.cellIdentifier,
                for: indexPath
            ) as? HomeCurationChipsCollectionCell,
            let cellType: HomeCurationChipsCellType = .init(rawValue: indexPath.item),
            let cellAnimation: LottieAnimation = cellType.cellAnimation
        else { return .init() }
        
        cell.setAnimationGradient(colors: cellType.gradientColors, changedColors: cellType.changedColors)
        
        cell.setCurationChipIconAnimation(cellAnimation)
        cell.setCurationChipTitle(cellType.cellTitle)
        
        return cell
    }
    
}
