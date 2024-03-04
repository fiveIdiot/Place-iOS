//
//  Dependency+Project.swift
//  Config
//
//  Created by 선민재 on 3/4/24.
//

import ProjectDescription

extension TargetDependency {
    public enum Projcet {}
}

public extension TargetDependency.Projcet {
    static let Feature = TargetDependency.project(target: "Feature", path: .relativeToRoot("Projects/Feature"))
    static let Service = TargetDependency.project(target: "Service", path: .relativeToRoot("Projects/Service"))
    static let ThirdPartyLib = TargetDependency.project(target: "ThirdPartyLib", path: .relativeToRoot("Projects/ThirdPartyLib"))
}
