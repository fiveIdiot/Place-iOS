//
//  SignInViewModel.swift
//  SplashFeature
//
//  Created by 선민재 on 7/1/24.
//  Copyright © 2024 fiveIdiot. All rights reserved.
//

import RxSwift
import RxCocoa
import RxFlow

import BaseFeature
import PlaceStep

final class SignInViewModel: BaseViewModel, RxFlow.Stepper {
    var steps: PublishRelay<Step> = .init()
    
    struct Input {}
    
    struct Output {}
    
    func transform(input: Input) -> Output {
        return Output()
    }
    
    func moveToOAuthView() {
        self.steps.accept(PlaceStep.oauthIsRequired)
    }
}
