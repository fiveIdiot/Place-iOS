//
//  SignUpFlow.swift
//  SignUpFeature
//
//  Created by 선민재 on 7/18/24.
//  Copyright © 2024 fiveIdiot. All rights reserved.
//

import UIKit
import SwiftUI
import RxCocoa
import RxSwift
import RxFlow

import PlaceStep
import SignInFeature

open class SignUpFlow: Flow {
    public var root: Presentable {
        return self.rootViewController
    }
    
    private lazy var rootViewController: UINavigationController = {
        let viewController = UINavigationController()
        return viewController
    }()
    
    public init(){}
    
    public func navigate(to step: Step) -> FlowContributors {
        guard let step = step as? PlaceStep else { return .none }
        switch step {
        case .termsOfUseIsRequired:
            return termsOfUseIsRequired()
        default:
            return .none
        }
    }
}


extension SignUpFlow {
    private func termsOfUseIsRequired() -> FlowContributors {
        let termsOfUseViewModel = TermsOfUseViewModel()
        let termsOfUseView = UIHostingController(rootView: TermsOfUseView(viewModel: termsOfUseViewModel))
     
        self.rootViewController.pushViewController(termsOfUseView, animated: false)
        return .one(flowContributor: .contribute(
            withNextPresentable: termsOfUseView,
            withNextStepper: termsOfUseViewModel
        ))
    }
}
