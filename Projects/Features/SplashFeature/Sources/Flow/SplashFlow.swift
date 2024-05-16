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
        default:
            return .none
        }
    }
}


extension SplashFlow {
    private func splashIsRequired() -> FlowContributors {
        let viewModel = SplashViewModel()
        let viewController = SplashViewController()
        self.rootViewController.setViewControllers([viewController], animated: false)
        return .one(flowContributor: .contribute(
            withNextPresentable: viewController,
            withNextStepper: viewModel
        ))
    }
}
