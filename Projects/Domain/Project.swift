//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 선민재 on 2/26/24.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "Domain",
    product: .staticFramework,
    dependencies: [
        .ThirdPartyLib.ThirdPartyLib
    ]
)
