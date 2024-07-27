//
//  SignInFlow.swift
//  RootFeature
//
//  Created by 선민재 on 5/12/24.
//  Copyright © 2024 fiveIdiot. All rights reserved.
//

import UIKit
import SwiftUI
import RxCocoa
import RxSwift
import RxFlow

import PlaceStep
import SignUpFeature

open class SignInFlow: Flow {
    public var root: Presentable {
        return self.rootViewController
    }
        
    private var rootViewController = UINavigationController()
    
    public init(){}
    
    public func navigate(to step: Step) -> FlowContributors {
        guard let step = step as? PlaceStep else { return .none }
        switch step {
        case .signInIsRequired:
            return signInIsRequired()
        case .oauthIsRequired:
            return oauthIsRequired()
        case .tabBarIsRequired:
            return .end(forwardToParentFlowWithStep: PlaceStep.tabBarIsRequired)
        case .signUpIsRequired:
            return coordinateToSignUp()
        default:
            return .none
        }
    }
}


extension SignInFlow {
    private func signInIsRequired() -> FlowContributors {
        let signInViewModel = SignInViewModel()
        let signInView = UIHostingController(rootView: SignInView(viewModel: signInViewModel))
        self.rootViewController.setViewControllers([signInView], animated: false)
        
        return .one(flowContributor: .contribute(
            withNextPresentable: signInView,
            withNextStepper: signInViewModel
        ))
    }
    
    private func oauthIsRequired() -> FlowContributors {
        let oauthViewModel = OAuthViewModel()
        let oauthView = UIHostingController(rootView: OAuthView(viewModel: oauthViewModel))
        self.rootViewController.pushViewController(oauthView, animated: false)

        return .one(flowContributor: .contribute(
            withNextPresentable: oauthView,
            withNextStepper: oauthViewModel
        ))
    }
    
    private func coordinateToSignUp() -> FlowContributors {
        
        let flow = SignUpFlow(root: self.rootViewController)
        let nextStep = OneStepper(withSingleStep: PlaceStep.termsOfUseIsRequired)

        return .one(flowContributor: .contribute(withNextPresentable: flow, withNextStepper: nextStep))
     }
}
