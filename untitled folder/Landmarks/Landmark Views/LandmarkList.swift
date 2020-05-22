//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Patrik Cesnek on 08/11/2019.
//  Copyright © 2019 Patrik Cesnek. All rights reserved.
//

import SwiftUI

struct LandmarkList<DetailView: View>: View {
    @EnvironmentObject private var userData: UserData
    
    let detailViewProducer: (Landmark) -> DetailView
    
    var body: some View {
        List {
            Toggle(isOn: $userData.showFavoritesOnly) {
                Text("Show Favorites Only")
            }
            
            ForEach(userData.landmarks) { landmark in
                            if !self.userData.showFavoritesOnly || landmark.isFavorite {
                                NavigationLink(
                                destination: self.detailViewProducer(landmark).environmentObject(self.userData)) {
                                    LandmarkRow(landmark: landmark)
                                }
                            }
                        }
                    }
                    .navigationBarTitle(Text("Landmarks"))
                }
            }

#if os(watchOS)

typealias PreviewDetailView = WatchLandmarkDetail
#else
typealias PreviewDetailView = ContentView
#endif

struct LandmarksList_Previews: PreviewProvider {
    static var previews: some View {
       LandmarkList { PreviewDetailView(landmark: $0) }
        .environmentObject(UserData())
    }
}
