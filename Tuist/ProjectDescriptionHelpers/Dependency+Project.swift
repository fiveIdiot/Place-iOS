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
}
