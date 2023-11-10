//
//  ContentView.swift
//  MentorMatch
//
//  Created by Joel Lacerda on 03/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Feed()
                .tabItem {
                    Label("Feed", systemImage: "house")
                }
        }
    }
}

#Preview {
    ContentView()
}
