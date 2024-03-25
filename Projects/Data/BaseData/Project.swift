//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 선민재 on 3/25/24.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "BaseData",
    product: .staticFramework,
    dependencies: [
        .ThirdPartyLib.ThirdPartyLib
    ]
)
