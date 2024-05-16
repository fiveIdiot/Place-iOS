//
//  PlaceStep.swift
//  RootFeature
//
//  Created by 선민재 on 4/1/24.
//  Copyright © 2024 fiveIdiot. All rights reserved.
//

import RxFlow

public enum PlaceStep: Step {
    // MARK: TabBar
    case tabBarIsRequired
    
    // MARK: Items
    case homeIsRequired
    case mapIsRequired
    case writePlaceIsRequired
    case storeIsRequired
    case profileIsRequired
    
    case splashIsRequired
}
