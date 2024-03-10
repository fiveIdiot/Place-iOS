//
//  Dependency+Project.swift
//  Config
//
//  Created by 선민재 on 3/4/24.
//

import ProjectDescription

extension TargetDependency {
    public enum Feature {}
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
}

public extension TargetDependency.Domain {
    //MARK: - Service
    static let Domain = TargetDependency.project(
        target: "Domain",
        path: .relativeToRoot("Projects/Domain")
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
