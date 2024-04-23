//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 선민재 on 3/29/24.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "ProfileFeature",
    product: .staticFramework,
    dependencies: [
        .Feature.BaseFeature,
        .Shared.PlaceStep
    ]
)
