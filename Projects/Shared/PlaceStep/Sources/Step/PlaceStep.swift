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
    
    // MARK: Auth
    case authIsRequired
    case splashIsRequired

    // MARK: SignIn
    case signInIsRequired
    case oauthIsRequired /// OAuth 설정하는 View

    // MARK: SignUp
    case signUpIsRequired
    case termsOfUseIsRequired /// 이용 약관 View
    case enterNickNameIsRequired /// 닉네임 입력 View
    case surveyIsRequired /// 설문조사 View
}
