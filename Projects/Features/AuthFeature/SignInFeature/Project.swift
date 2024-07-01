//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 선민재 on 7/1/24.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "SignInFeature",
    product: .staticFramework,
    dependencies: [
        .Feature.BaseFeature,
        .Shared.PlaceStep
    ]
)
