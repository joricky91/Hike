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
            CustomBackgroundView()
            
            VStack {
                //MARK: - HEADER
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52)) 
                        .foregroundStyle(.linearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom))
                        
                        Spacer()
                        
                        Button(action: {
                            // Show a sheet
                            print("The button was pressed")
                        }, label: {
                            CustomButtonView()
                        })
                    }
                    
                    Text("Find and enjoyable outdoor activity for friends and families.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                }
                .padding(.horizontal, 30)
                
                //MARK: - MAIN CONTENT
                
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
                
                //MARK: - FOOTER
            }
        }
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
