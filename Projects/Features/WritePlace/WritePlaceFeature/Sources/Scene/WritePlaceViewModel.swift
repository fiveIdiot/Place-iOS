//
//  WritePlaceViewModel.swift
//  WritePlaceFeature
//
//  Created by 선민재 on 4/1/24.
//  Copyright © 2024 fiveIdiot. All rights reserved.
//

import RxSwift
import RxCocoa
import RxFlow

import BaseFeature

final class WritePlaceViewModel: BaseViewModel, Stepper {
    var steps: PublishRelay<Step> = .init()
    struct Input {}
    
    struct Output {}
    
    func transform(input: Input) -> Output {
        return Output()
    }
}
