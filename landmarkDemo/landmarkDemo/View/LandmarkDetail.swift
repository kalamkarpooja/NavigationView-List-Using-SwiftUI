//
//  LandmarkDetail.swift
//  landmarkDemo
//
//  Created by TeamLeaseRegtech on 20/05/24.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark :Landmark
    var body: some View {
        ZStack {
            
            ScrollView {
                VStack(alignment: .center){
                    MapView(coordinate: landmark.locationCoordinates)
                                .frame(height: 380)
                    CircleImage(image: landmark.image)
                                .offset(y:-130)
                                .padding(.bottom,-130)
                            VStack(alignment: .leading) {
                                Text(landmark.name)
                                    .font(.title2)
                                    .bold()
                                HStack {
                                    Text(landmark.park)
                                    Spacer()
                                    Text(landmark.state)

                                }.font(.subheadline)
                                    .foregroundColor(.secondary)
                                
                                Divider()
                                Text("About \(landmark.name)")
                                    .font(.title2)
                                Text(landmark.description)
                        
                            }
                            .padding()
                             
                }
                .navigationTitle(landmark.name)
                .navigationBarTitleDisplayMode(.inline)
            }
            .frame(maxWidth: .infinity,maxHeight: .infinity)
        }
  
    }
}

#Preview {
    LandmarkDetail(landmark: landmark[0])
}
