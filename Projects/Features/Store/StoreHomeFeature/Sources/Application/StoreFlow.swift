//
//  StoreFlow.swift
//  HomeFeature
//
//  Created by 선민재 on 4/23/24.
//  Copyright © 2024 fiveIdiot. All rights reserved.
//

import RxFlow
import UIKit
import RxCocoa
import RxSwift

import PlaceStep

struct StoreStepper: Stepper{
    var steps = PublishRelay<Step>()

    var initialStep: Step {
        return PlaceStep.storeIsRequired
    }
}

open class StoreFlow: Flow {
    public var root: Presentable {
        return self.rootViewController
    }
    
    var stepper = StoreStepper()
    
    private lazy var rootViewController: UINavigationController = {
        let viewController = UINavigationController()
        return viewController
    }()
    
    public init(){}
    
    public func navigate(to step: Step) -> FlowContributors {
        guard let step = step as? PlaceStep else { return .none }
        switch step {
        case .storeIsRequired:
            return storeIsRequired()
        default:
            return .none
        }
    }
}


extension StoreFlow {
    private func storeIsRequired() -> FlowContributors {
        let viewModel = StoreHomeViewModel()
        let viewController = StoreHomeViewController()
        self.rootViewController.pushViewController(viewController, animated: true)
        return .one(flowContributor: .contribute(
            withNextPresentable: viewController,
            withNextStepper: viewModel
        ))
    }
}
