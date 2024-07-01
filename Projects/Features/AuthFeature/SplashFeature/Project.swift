//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 선민재 on 3/27/24.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "SplashFeature",
    product: .staticFramework,
    dependencies: [
        .Feature.BaseFeature,
        .Shared.PlaceStep
    ],
    resources: ["Resources/**"]
)
