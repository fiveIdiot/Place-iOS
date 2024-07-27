//
//  HomeFlow.swift
//  HomeFeature
//
//  Created by 선민재 on 4/2/24.
//  Copyright © 2024 fiveIdiot. All rights reserved.
//

import RxFlow
import UIKit
import RxCocoa
import RxSwift

import PlaceStep

struct HomeStepper: Stepper{
    var steps = PublishRelay<Step>()

    var initialStep: Step {
        return PlaceStep.homeIsRequired
    }
}

open class HomeFlow: Flow {
    public var root: Presentable {
        return self.rootViewController
    }
    
    var stepper = HomeStepper()
    
    private lazy var rootViewController: UINavigationController = {
        let viewController = UINavigationController()
        return viewController
    }()
    
    public init(){}
    
    public func navigate(to step: Step) -> FlowContributors {
        guard let step = step as? PlaceStep else { return .none }
        switch step {
        case .homeIsRequired:
            return homeIsRequired()
        default:
            return .none
        }
    }
}


extension HomeFlow {
    private func homeIsRequired() -> FlowContributors {
        let viewModel = HomeViewModel()
        let viewController = HomeViewController()
        self.rootViewController.pushViewController(viewController, animated: true)
        return .one(flowContributor: .contribute(
            withNextPresentable: viewController,
            withNextStepper: viewModel
        ))
    }
}
