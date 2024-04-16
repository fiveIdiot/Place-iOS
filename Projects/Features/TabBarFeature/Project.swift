//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 선민재 on 4/1/24.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "TabBarFeature",
    product: .staticFramework,
    dependencies: [
        .Feature.RootFeature
    ]
)
