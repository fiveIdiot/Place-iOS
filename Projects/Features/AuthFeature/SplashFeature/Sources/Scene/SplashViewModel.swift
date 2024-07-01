//
//  SplashViewModel.swift
//  SplashFeature
//
//  Created by 선민재 on 5/12/24.
//  Copyright © 2024 fiveIdiot. All rights reserved.
//

import RxSwift
import RxCocoa
import RxFlow

import BaseFeature
import PlaceStep

final class SplashViewModel: BaseViewModel, Stepper {
    var steps: PublishRelay<Step> = .init()
    
    struct Input {
        
    }
    
    struct Output {
        
    }
    
    func transform(input: Input) -> Output {
        return Output()
    }
    
    func moveToTabBarController() {
        self.steps.accept(PlaceStep.authIsRequired)
    }
}
