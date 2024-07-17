//
//  SplashFlow.swift
//  RootFeature
//
//  Created by 선민재 on 5/12/24.
//  Copyright © 2024 fiveIdiot. All rights reserved.
//

import RxFlow
import UIKit
import RxCocoa
import RxSwift

import PlaceStep
import SignInFeature

struct SplashStepper: Stepper{
    var steps = PublishRelay<Step>()

    var initialStep: Step {
        return PlaceStep.splashIsRequired
    }
}

open class SplashFlow: Flow {
    public var root: Presentable {
        return self.rootViewController
    }
    
    var stepper = SplashStepper()
    
    private lazy var rootViewController: UINavigationController = {
        let viewController = UINavigationController()
        return viewController
    }()
    
    public init(){}
    
    public func navigate(to step: Step) -> FlowContributors {
        guard let step = step as? PlaceStep else { return .none }
        switch step {
        case .splashIsRequired:
            return splashIsRequired()
        case .authIsRequired:
            return .end(forwardToParentFlowWithStep: PlaceStep.authIsRequired)
        case .tabBarIsRequired:
            return .end(forwardToParentFlowWithStep: PlaceStep.tabBarIsRequired)
        default:
            return .none
        }
    }
}


extension SplashFlow {
    private func splashIsRequired() -> FlowContributors {
        let splashViewModel = SplashViewModel()
        let splashViewController = SplashViewController(with: splashViewModel)
        self.rootViewController.setViewControllers([splashViewController], animated: false)
        return .one(flowContributor: .contribute(
            withNextPresentable: splashViewController,
            withNextStepper: splashViewModel
        ))
    }
}