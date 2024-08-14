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
import SignInFeature

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
        return self.window
    }
    
    private let window: UIWindow
    
    public init(window: UIWindow) {
        self.window = window
    }
    
    public func navigate(to step: Step) -> FlowContributors {
        guard let step = step as? PlaceStep else {return .none}
        
        switch step {
        case .splashIsRequired:
            return coordinateToSplash()
        case .authIsRequired:
            return coordinateToAuth()
        case .tabBarIsRequired:
            return coordinateToTabBar()
        default:
            return .none
        }
    }

    private func coordinateToSplash() -> FlowContributors {
        let flow = SplashFlow()
        Flows.use(flow, when: .created) { [weak self] root in
            guard let self = self else { return }
            self.window.rootViewController = root
        }
        return .one(
            flowContributor: .contribute(
                withNextPresentable: flow,
                withNextStepper: OneStepper(withSingleStep: PlaceStep.splashIsRequired)
            )
        )
    }
    
    private func coordinateToTabBar() -> FlowContributors {
        let flow = TabBarFlow()
        Flows.use(flow, when: .created) { [weak self] root in
            guard let self = self else { return }
            self.window.rootViewController = root
        }
        return .one(
            flowContributor: .contribute(
                withNextPresentable: flow,
                withNextStepper: OneStepper(withSingleStep: PlaceStep.tabBarIsRequired)
            )
        )
    }
    
    private func coordinateToAuth() -> FlowContributors {
        let flow = SignInFlow()
        Flows.use(flow, when: .created) { [weak self] root in
            guard let self = self else { return }
            self.window.rootViewController = root
        }
        return .one(
            flowContributor: .contribute(
                withNextPresentable: flow,
                withNextStepper: OneStepper(withSingleStep: PlaceStep.signInIsRequired)
            )
        )
    }
    
}
