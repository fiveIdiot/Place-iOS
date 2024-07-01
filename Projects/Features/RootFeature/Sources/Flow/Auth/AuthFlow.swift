//
//  AuthFlow.swift
//  RootFeature
//
//  Created by 선민재 on 7/1/24.
//  Copyright © 2024 fiveIdiot. All rights reserved.
//


import RxFlow
import UIKit

import SignInFeature

import PlaceStep
import DesignSystem

final class AuthFlow: Flow {
    
    var root: Presentable {
        return self.rootViewController
    }
    
    private let rootViewController = UINavigationController()
    
    init() {}
    
    func navigate(to step: Step) -> FlowContributors {
        guard let step = step as? PlaceStep else {return .none}
        
        switch step {
        case .authIsRequired:
            return coordinateToSignIn()
        default:
            return .none
        }
    }
}


private extension AuthFlow {
    func coordinateToSignIn() -> FlowContributors {
        let signInFlow = SignInFlow()
        
        return .one(flowContributor: .contribute(
            withNextPresentable: signInFlow,
            withNextStepper: OneStepper(withSingleStep: PlaceStep.signInRequired)
        ))
     }
}
