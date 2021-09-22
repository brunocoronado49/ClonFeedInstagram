//
//  TabMenu.swift
//  ClonFeedInstagram
//
//  Created by Bruno Coronado on 22/09/21.
//

import SwiftUI

struct TabMenu: View {
    @State private var selection: Tab = .feed
    
    enum Tab {
        case feed
        case profile
        case add
    }
    
    var body: some View {
        TabView(selection: $selection) {
            ContentView()
                .tabItem {
                    Label("Feed", systemImage: "house")
                }
                .tag(Tab.feed)
            
            ContentView()
                .tabItem {
                    Label("Add", systemImage: "plus.circle")
                }
                .tag(Tab.add)
            
            ContentView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
                .tag(Tab.add)
        }
    }
}

struct TabMenu_Previews: PreviewProvider {
    static var previews: some View {
        TabMenu()
            .environmentObject(ModelData())
    }
}
