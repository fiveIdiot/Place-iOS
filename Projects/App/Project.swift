//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 선민재 on 2/26/24.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "Place",
    platform: .iOS,
    product: .app,
    dependencies: [
        .project(target: "Feature", path: .relativeToRoot("Projects/Feature"))
    ],
    resources: ["Resources/**"],
    infoPlist: .file(path: "Support/Info.plist")
)
