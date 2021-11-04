//
//  TabButtonsView.swift
//  SeaSell
//
//  Created by Usman Mukhtar on 03/11/2021.
//

import SwiftUI

struct TabButtonView: View {
    var image: String
    @Binding var selectedTab: String
    var body: some View {
        Button(action: {selectedTab = image}) {
            Image(systemName: image)
                .foregroundColor(selectedTab == image ? Color("green") : .white)
                .padding()
                .font(Font.title2.weight(.bold))
        }
    }
}
