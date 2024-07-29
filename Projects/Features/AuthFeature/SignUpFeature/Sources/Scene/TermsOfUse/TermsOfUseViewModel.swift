//
//  TermsOfUseViewModel.swift
//  SignUpFeature
//
//  Created by 선민재 on 7/18/24.
//  Copyright © 2024 fiveIdiot. All rights reserved.
//

import RxSwift
import RxCocoa
import RxFlow

import BaseFeature
import PlaceStep

final class TermsOfUseViewModel: BaseViewModel, Stepper {
    var steps: PublishRelay<Step> = .init()
    
    struct Input {
        
    }
    
    struct Output {
        
    }
    
    func transform(input: Input) -> Output {
        return Output()
    }
    
    func moveToEnterNickNameView() {
        self.steps.accept(PlaceStep.enterNickNameIsRequired)
    }
}
