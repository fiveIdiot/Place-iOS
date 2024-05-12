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

struct AppStepper: Stepper {
    let steps = PublishRelay<Step>()
    private let disposeBag = DisposeBag()

    init() {}
    
    func readyToEmitSteps() {
        steps.accept(PlaceStep.tabBarIsRequired)
    }
}

final class AppFlow: Flow {
    
    var root: Presentable {
        return window
    }
    
    private let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
        
    deinit{
        print("\(type(of: self)): \(#function)")
    }
    
    func navigate(to step: Step) -> FlowContributors {
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
