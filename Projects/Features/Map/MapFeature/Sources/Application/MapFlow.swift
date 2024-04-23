//
//  MapFlow.swift
//  MapFeature
//
//  Created by 선민재 on 4/23/24.
//  Copyright © 2024 fiveIdiot. All rights reserved.
//

import RxFlow
import UIKit
import RxCocoa
import RxSwift

import PlaceStep

struct MapStepper: Stepper{
    var steps = PublishRelay<Step>()

    var initialStep: Step {
        return PlaceStep.mapIsRequired
    }
}

open class MapFlow: Flow {
    public var root: Presentable {
        return self.rootViewController
    }
    
    var stepper = MapStepper()
    
    private lazy var rootViewController: UINavigationController = {
        let viewController = UINavigationController()
        return viewController
    }()
    
    public init(){}
    
    public func navigate(to step: Step) -> FlowContributors {
        guard let step = step as? PlaceStep else { return .none }
        switch step {
        case .mapIsRequired:
            return mapIsRequired()
        default:
            return .none
        }
    }
}


extension MapFlow {
    private func mapIsRequired() -> FlowContributors {
        let viewModel = MapViewModel()
        let viewController = MapViewController()
        self.rootViewController.pushViewController(viewController, animated: true)
        return .one(flowContributor: .contribute(
            withNextPresentable: viewController,
            withNextStepper: viewModel
        ))
    }
}
