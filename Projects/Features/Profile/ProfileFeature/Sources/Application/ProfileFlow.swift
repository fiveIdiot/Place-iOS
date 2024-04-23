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

struct ProfileStepper: Stepper{
    var steps = PublishRelay<Step>()

    var initialStep: Step {
        return PlaceStep.profileIsRequired
    }
}

public class ProfileFlow: Flow {
    public var root: Presentable {
        return self.rootViewController
    }
    
    var stepper = ProfileStepper()
    
    private lazy var rootViewController: UINavigationController = {
        let viewController = UINavigationController()
        return viewController
    }()
    
    public init(){}
    
    public func navigate(to step: Step) -> FlowContributors {
        guard let step = step as? PlaceStep else { return .none }
        switch step {
        case .profileIsRequired:
            return profileIsRequired()
        default:
            return .none
        }
    }
}


extension ProfileFlow {
    private func profileIsRequired() -> FlowContributors {
        let viewModel = ProfileViewModel()
        let viewController = ProfileViewController()
        self.rootViewController.pushViewController(viewController, animated: true)
        return .one(flowContributor: .contribute(
            withNextPresentable: viewController,
            withNextStepper: viewModel
        ))
    }
}
