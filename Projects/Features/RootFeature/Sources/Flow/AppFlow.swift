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

public struct AppStepper: Stepper {
    public let steps = PublishRelay<Step>()
    private let disposeBag = DisposeBag()

    public init() {}
    
    public func readyToEmitSteps() {
        steps.accept(PlaceStep.tabBarIsRequired)
    }
}

open class AppFlow: Flow {
    
    public var root: Presentable {
        return window
    }
    
    private let window: UIWindow
    
    public init(window: UIWindow) {
        self.window = window
    }
        
    deinit{
        print("\(type(of: self)): \(#function)")
    }
    
    public func navigate(to step: Step) -> FlowContributors {
        guard let step = step as? PlaceStep else {return .none}
        
        switch step {
//        case .introIsRequired:
//            return coordinateToIntro()
        case .tabBarIsRequired:
            return coordinateToHome()
        default:
            return .none
        }
    }
    
//    private func coordinateToIntro() -> FlowContributors {
//        let flow = AuthFlow()
//        Flows.use(flow, when: .created) { (root) in
//            self.window.rootViewController = root
//        }
//        return .one(
//            flowContributor: .contribute(
//                withNextPresentable: flow,
//                withNextStepper: OneStepper(withSingleStep: GOMSStep.introIsRequired)
//        ))
//    }

    private func coordinateToHome() -> FlowContributors {
        let flow = TabBarFlow()
        Flows.use(
            flow,
            when: .created
        ) { [unowned self] root in
            self.window.rootViewController = root
        }
        return .one(
            flowContributor: .contribute(
                withNextPresentable: flow,
                withNextStepper: OneStepper(
                    withSingleStep: PlaceStep.tabBarIsRequired
                )
        ))
    }
    
}
