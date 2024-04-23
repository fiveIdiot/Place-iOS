//
//  WritePlaceFlow.swift
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

struct WritePlaceStepper: Stepper{
    var steps = PublishRelay<Step>()

    var initialStep: Step {
        return PlaceStep.writePlaceIsRequired
    }
}

open class WritePlaceFlow: Flow {
    public var root: Presentable {
        return self.rootViewController
    }
    
    var stepper = WritePlaceStepper()
    
    private lazy var rootViewController: UINavigationController = {
        let viewController = UINavigationController()
        return viewController
    }()
    
    public init(){}
    
    public func navigate(to step: Step) -> FlowContributors {
        guard let step = step as? PlaceStep else { return .none }
        switch step {
        case .writePlaceIsRequired:
            return writePlaceIsRequired()
        default:
            return .none
        }
    }
}


extension WritePlaceFlow {
    private func writePlaceIsRequired() -> FlowContributors {
        let viewModel = WritePlaceViewModel()
        let viewController = WritePlaceViewController()
        self.rootViewController.pushViewController(viewController, animated: true)
        return .one(flowContributor: .contribute(
            withNextPresentable: viewController,
            withNextStepper: viewModel
        ))
    }
}
