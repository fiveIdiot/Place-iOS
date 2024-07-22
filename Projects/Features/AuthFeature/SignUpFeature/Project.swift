//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 선민재 on 7/18/24.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "SignUpFeature",
    product: .staticFramework,
    dependencies: [
        .Feature.BaseFeature,
        .Feature.SignInFeature,
        .Shared.PlaceStep
    ]
)
