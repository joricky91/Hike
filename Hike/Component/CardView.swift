//
//  CardView.swift
//  Hike
//
//  Created by Jonathan Ricky Sandjaja on 23/11/23.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(colors: [Color("ColorIndigoMedium"), Color("ColorSalmonLight")], startPoint: .topLeading, endPoint: .bottomTrailing)
                )
                .frame(width: 256, height: 256)
            
            Image(.image1)
                .resizable()
            .scaledToFit()
        }
    }
}

#Preview {
    CardView()
}
