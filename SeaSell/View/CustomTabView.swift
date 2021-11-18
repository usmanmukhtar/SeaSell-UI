//
//  BottomTabBarView.swift
//  SeaSell
//
//  Created by Usman Mukhtar on 03/11/2021.
//

import SwiftUI

struct CustomTabView: View {
    @State var selectedTab = "person.crop.circle"
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
            
            TabView(selection: $selectedTab) {
                ContentView()
                    .tag("person.crop.circle")
                
                FilesView2()
                    .tag("filemenu.and.selection")
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            //confirm ignoresSafeArea
            .ignoresSafeArea(.all, edges: .bottom)
            
            HStack {
                ForEach(tabs, id:\.self){image in
                    TabButtonView(image: image, selectedTab: $selectedTab)
                    
                    if image != tabs.last{
                        Spacer(minLength: 0)
                    }
                    
                }
            }
            .padding(.horizontal, 10)
            .background(Color("black"))
            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
            .padding(.horizontal)
        }
        .ignoresSafeArea(.keyboard, edges: .bottom)
    }
}

var tabs = ["person.crop.circle", "filemenu.and.selection", "personalhotspot", "folder", "questionmark.circle"]

struct BottomTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView()
    }
}
