//
//  ContentView.swift
//  WatchLandmarks Extension
//
//  Created by lin sun on 12/24/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ModelData())
    }
}
