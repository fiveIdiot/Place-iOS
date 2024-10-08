//
//  Dependency+Project.swift
//  Config
//
//  Created by 선민재 on 3/4/24.
//

import ProjectDescription

extension TargetDependency {
    public enum Feature {}
    public enum Data {}
    public enum Domain {}
    public enum ThirdPartyLib {}
    public enum Shared {}
}

public extension TargetDependency.Feature {
    //MARK: - Feature
    static let BaseFeature = TargetDependency.project(
        target: "BaseFeature",
        path: .relativeToRoot("Projects/Features/BaseFeature")
    )
    
    static let RootFeature = TargetDependency.project(
        target: "RootFeature",
        path: .relativeToRoot("Projects/Features/RootFeature")
    )
    
    static let SplashFeature = TargetDependency.project(
        target: "SplashFeature",
        path: .relativeToRoot("Projects/Features/AuthFeature/SplashFeature")
    )
    
    static let SignInFeature = TargetDependency.project(
        target: "SignInFeature",
        path: .relativeToRoot("Projects/Features/AuthFeature/SignInFeature")
    )
    
    static let SignUpFeature = TargetDependency.project(
        target: "SignUpFeature",
        path: .relativeToRoot("Projects/Features/AuthFeature/SignUpFeature")
    )
    
    static let HomeFeature = TargetDependency.project(
        target: "HomeFeature",
        path: .relativeToRoot("Projects/Features/Home/HomeFeature")
    )
    
    static let MapFeature = TargetDependency.project(
        target: "MapFeature",
        path: .relativeToRoot("Projects/Features/Map/MapFeature")
    )
    
    static let WritePlaceFeature = TargetDependency.project(
        target: "WritePlaceFeature",
        path: .relativeToRoot("Projects/Features/WritePlace/WritePlaceFeature")
    )
    
    static let StoreHomeFeature = TargetDependency.project(
        target: "StoreHomeFeature",
        path: .relativeToRoot("Projects/Features/Store/StoreHomeFeature")
    )
    
    static let ProfileFeature = TargetDependency.project(
        target: "ProfileFeature",
        path: .relativeToRoot("Projects/Features/Profile/ProfileFeature")
    )
}

public extension TargetDependency.Data {
    //MARK: - Data
    static let BaseData = TargetDependency.project(
        target: "BaseData",
        path: .relativeToRoot("Projects/Data/BaseData")
    )
}

public extension TargetDependency.Domain {
    //MARK: - Domain
    static let BaseDomain = TargetDependency.project(
        target: "BaseDomain",
        path: .relativeToRoot("Projects/Domain/BaseDomain")
    )
}

public extension TargetDependency.ThirdPartyLib {
    //MARK: - ThirdPartyLib
    static let ThirdPartyLib = TargetDependency.project(
        target: "ThirdPartyLib",
        path: .relativeToRoot("Projects/ThirdPartyLib")
    )
}
    

public extension TargetDependency.Shared {
    //MARK: - Util
    static let DesignSystem = TargetDependency.project(
        target: "DesignSystem",
        path: .relativeToRoot("Projects/Shared/DesignSystem")
    )
    
    static let PlaceStep = TargetDependency.project(
        target: "PlaceStep",
        path: .relativeToRoot("Projects/Shared/PlaceStep")
    )
    
    static let Util = TargetDependency.project(
        target: "Util",
        path: .relativeToRoot("Projects/Shared/Util")
    )
}
