//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 선민재 on 2/26/24.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "App",
    destinations: .iOS,
    product: .app,
    dependencies: [
        .Feature.BaseFeature
    ],
    resources: ["Resources/**"],
    infoPlist: .file(path: "Support/Info.plist")
)
