//
//  Dependency+SPM.swift
//  ProjectDescriptionHelpers
//
//  Created by 선민재 on 3/4/24.
//

import ProjectDescription

public extension TargetDependency {
    enum SPM {}
}

public extension TargetDependency.SPM {
    static let RxSwift = TargetDependency.external(name: "RxSwift")
    static let RxCocoa = TargetDependency.external(name: "RxCocoa")
    static let RxFlow = TargetDependency.external(name: "RxFlow")
    static let Moya = TargetDependency.external(name: "Moya")
    static let Kingfisher = TargetDependency.external(name: "Kingfisher")
    static let SnapKit = TargetDependency.external(name: "SnapKit")
}
