//
//  SettingsView.swift
//  Hike
//
//  Created by Jonathan Ricky on 24/11/23.
//

import SwiftUI

struct SettingsView: View {
    private let alternateIcons: [String] = ["AppIcon-MagnifyingGlass", "AppIcon-Backpack", "AppIcon-Campfire", "AppIcon-Camera", "AppIcon-Map", "AppIcon-Mushroom"]
    
    private func changeAppIcons(item: Int) {
        UIApplication.shared.setAlternateIconName(alternateIcons[item]) { error in
            if error != nil {
                print("Failed to update icons \(error?.localizedDescription ?? "")")
            } else {
                print("Success!")
            }
        }
    }
    
    var body: some View {
        List {
            // MARK: - SECTION HEADER
            SettingsHeader()
            
            // MARK: - SECTION ICONS
            Section {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 12) {
                        ForEach(alternateIcons.indices, id: \.self) { item in
                            Button {
                                changeAppIcons(item: item)
                            } label: {
                                Image("\(alternateIcons[item])-Preview")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                                    .cornerRadius(16)
                                    .buttonStyle(.borderless)
                            }
                        }
                    }
                }
                .padding(.top, 12)
                
                Text("Choose your favourite app icon from the collection above")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .font(.footnote)
                    .padding(.bottom, 12)
            } header: {
                Text("Alternate Icons")
            }
            .listRowSeparator(.hidden)
            
            // MARK: - SECTION ABOUT
            AboutSection()
        }
    }
}

#Preview {
    SettingsView()
}
