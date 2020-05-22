//
//  RotatedBadgeSymbol.swift
//  Landmarks
//
//  Created by Patrik Cesnek on 11/11/2019.
//  Copyright © 2019 Patrik Cesnek. All rights reserved.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    let angle: Angle
    
    var body: some View {
        BadgeSymbol()
        .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

struct RotatedBadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        RotatedBadgeSymbol(angle: .init(degrees: 5))
    }
}
