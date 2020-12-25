//
//  LandmarkList.swift
//  Landmarks
//
//  Created by lin sun on 12/25/20.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter({ landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        })
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
            .frame(minWidth: 300)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList().environmentObject(ModelData())
        //        ForEach(["iPhone SE", "iPad Air (4th generation)"], id: \.self) { deviceName in
        //            LandmarkList().environmentObject(ModelData()).previewDevice(PreviewDevice(rawValue: deviceName))
        //                .previewDisplayName(deviceName)
        //        }
    }
}
