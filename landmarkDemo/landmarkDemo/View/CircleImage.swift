//
//  CircleImage.swift
//  landmarkDemo
//
//  Created by TeamLeaseRegtech on 20/05/24.
//

import SwiftUI

struct CircleImage: View {
    var image : Image
    var body: some View {
        image
                   .resizable() // Make the image resizable
                   .frame(width: 150, height: 150) 
                   .clipShape(Circle())
                   .overlay(Circle().stroke(Color.white, lineWidth: 4))
                   .shadow(radius: 7)
    }
}

#Preview {
    CircleImage(image: Image("Bappa"))
}
