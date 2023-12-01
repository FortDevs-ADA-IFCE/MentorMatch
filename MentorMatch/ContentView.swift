//
//  ContentView.swift
//  MentorMatch
//
//  Created by Joel Lacerda on 03/11/23.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    var body: some View {
        TabView {
            Feed()
                .tabItem {
                    Label("Início", systemImage: "house")
                }
            PopQuiz()
                .tabItem {
                    Label("Pop Quiz", systemImage: "bolt")
                }
            Perfil()
                .tabItem {
                    Label("Perfil", systemImage: "person")
                }
        }
    }
}

#Preview {
    ContentView()
}
