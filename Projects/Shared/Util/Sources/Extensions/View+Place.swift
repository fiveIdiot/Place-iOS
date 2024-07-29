//
//  View+Place.swift
//  Util
//
//  Created by 선민재 on 7/29/24.
//  Copyright © 2024 fiveIdiot. All rights reserved.
//

import SwiftUI

extension View {
    public func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {

        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}
