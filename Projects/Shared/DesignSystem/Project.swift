//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 선민재 on 3/10/24.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "DesignSystem",
    product: .staticFramework,
    dependencies: [
        .ThirdPartyLib.ThirdPartyLib
    ],
    resources: ["Resources/**"]
)
