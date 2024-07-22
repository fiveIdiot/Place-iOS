//
//  BaseViewController.swift
//  BaseFeature
//
//  Created by 선민재 on 3/31/24.
//  Copyright © 2024 fiveIdiot. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

import DesignSystem

open class BaseViewController: UIViewController {
    public let disposeBag = DisposeBag()
    
    override open func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        self.view.backgroundColor = DesignSystemAsset.PlaceColor.grey10.color
        self.addSubviews()
        self.setLayout()
    }
    
    open func addSubviews() {}
    open func setLayout() {}
}
