//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 선민재 on 7/29/24.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "Util",
    product: .staticFramework,
    dependencies: [
        .ThirdPartyLib.ThirdPartyLib
    ]
)
