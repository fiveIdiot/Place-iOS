//
//  SplashViewController.swift
//  SplashFeature
//
//  Created by 선민재 on 7/1/24.
//  Copyright © 2024 fiveIdiot. All rights reserved.
//

import UIKit
import SwiftUI
import SnapKit
import Lottie

import BaseFeature
import DesignSystem

final class SignInViewController: BaseViewController {
    private let viewModel: SignInViewModel
    
    init(with viewModel: SignInViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        self.view.backgroundColor = DesignSystemAsset.PlaceColor.blue1.color
    }
}

struct SignInView: View {
    var body: some View {
        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Hello, world!@*/Text("Hello, world!")/*@END_MENU_TOKEN@*/
    }
}
