//
//  UserData.swift
//  Landmarks
//
//  Created by Patrik Cesnek on 10/11/2019.
//  Copyright © 2019 Patrik Cesnek. All rights reserved.
//

import Combine
import SwiftUI

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
    @Published var profile = Profile.default
}
