//
//  AppFlow.swift
//  RootFeature
//
//  Created by 선민재 on 4/16/24.
//  Copyright © 2024 fiveIdiot. All rights reserved.
//

import UIKit
import RxFlow
import RxSwift
import RxCocoa

import PlaceStep
import SplashFeature

public struct AppStepper: Stepper {
    public let steps = PublishRelay<Step>()
    private let disposeBag = DisposeBag()

    public init() {}
    
    public func readyToEmitSteps() {
        steps.accept(PlaceStep.splashIsRequired)
    }
}

open class AppFlow: Flow {
    
    public var root: Presentable {
        return self.rootViewController
    }
        
    private lazy var rootViewController: UIViewController = {
        let viewController = UIViewController()
        return viewController
    }()
    
    public init(){}
    
    public func navigate(to step: Step) -> FlowContributors {
        guard let step = step as? PlaceStep else {return .none}
        
        switch step {
        case .splashIsRequired:
            return coordinateToSplash()
        default:
            return .none
        }
    }

    private func coordinateToSplash() -> FlowContributors {
        let flow = SplashFlow()
        Flows.use(
            flow,
            when: .created
        ) { [unowned self] root in
            self.rootViewController = root
        }
        return .one(
            flowContributor: .contribute(
                withNextPresentable: flow,
                withNextStepper: OneStepper(
                    withSingleStep: PlaceStep.splashIsRequired
                )
        ))
    }
    
}
