//
//  ContentView.swift
//  WatchLandmarks Extension
//
//  Created by Patrik Cesnek on 14/11/2019.
//  Copyright © 2019 Patrik Cesnek. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList { WatchLandmarkDetail(landmark: $0) }
        .environmentObject(UserData())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList { WatchLandmarkDetail(landmark: $0) }
        .environmentObject(UserData())
    }
}
