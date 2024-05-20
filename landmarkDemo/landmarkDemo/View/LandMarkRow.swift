//
//  LandMarkRow.swift
//  landmarkDemo
//
//  Created by TeamLeaseRegtech on 20/05/24.
//

import SwiftUI

struct LandMarkRow: View {
    var landmark : Landmark
    var body: some View {
        HStack{
            landmark.image
                .resizable()
                .frame(width: 60,height: 60)
            Text(landmark.name)
            Spacer()
        }
    }
}

#Preview {
    LandMarkRow(landmark: landmark[0])
       
}
