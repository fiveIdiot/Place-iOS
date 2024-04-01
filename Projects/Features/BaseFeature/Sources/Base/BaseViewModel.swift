//
//  BaseViewModel.swift
//  BaseFeature
//
//  Created by 선민재 on 3/31/24.
//  Copyright © 2024 fiveIdiot. All rights reserved.
//

public protocol BaseViewModel {
    associatedtype Input
    associatedtype Output
        
    func transform(input: Input) -> Output
}
