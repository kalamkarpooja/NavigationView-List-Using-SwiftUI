//
//  LandmarkList.swift
//  landmarkDemo
//
//  Created by TeamLeaseRegtech on 20/05/24.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView{
            List(landmark) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandMarkRow(landmark: landmark)
                }
            }
            //.listStyle(.sidebar)
            .navigationTitle("Landmarks")
        }
    }
}

#Preview {
    LandmarkList()
}
