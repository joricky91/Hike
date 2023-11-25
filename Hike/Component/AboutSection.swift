//
//  AboutSection.swift
//  Hike
//
//  Created by Jonathan Ricky Sandjaja on 25/11/23.
//

import SwiftUI

struct AboutSection: View {
    var body: some View {
        Section {
            // Basic labeled content
//                LabeledContent("Application", value: "Hike")
            CustomListRowView(rowLabel: "Application", rowIcon: "apps.iphone", rowContent: "Hike", rowTintColor: .blue)
            
            CustomListRowView(rowLabel: "Compatibility", rowIcon: "info.circle", rowContent: "iOS & iPadOS", rowTintColor: .red)
            
            CustomListRowView(rowLabel: "Technology", rowIcon: "swift", rowContent: "Swift", rowTintColor: .orange)
            
            CustomListRowView(rowLabel: "Version", rowIcon: "gear", rowContent: "1.0", rowTintColor: .purple)
            
            CustomListRowView(rowLabel: "Developer", rowIcon: "ellipsis.curlybraces", rowContent: "Jonathan Ricky", rowTintColor: .mint)
            
            CustomListRowView(rowLabel: "Designer", rowIcon: "paintpalette", rowContent: "Robert Petras", rowTintColor: .pink)
            
            CustomListRowView(rowLabel: "Website", rowIcon: "globe", rowTintColor: .indigo, rowLinkLabel: "Credo Academy", rowLinkDestination: "https://credo.academy")
        } header: {
            Text("ABOUT THE APP")
        } footer: {
            HStack {
                Spacer()
                
                Text("Copyright © All rights reserved.")
                
                Spacer()
            }.padding(.vertical, 8)
        }
    }
}

#Preview {
    AboutSection()
}
