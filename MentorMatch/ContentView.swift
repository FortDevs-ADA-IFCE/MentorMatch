//
//  ContentView.swift
//  MentorMatch
//
//  Created by Joel Lacerda on 03/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 1, green: 0.6, blue: 0.38)
                .ignoresSafeArea()
            VStack(spacing: 36) {
                Image(systemName: "graduationcap.fill")
                    .font(Font.custom("SF Pro", size: 70))
                Text("MentorMatch")
                    .font(Font.custom("SF Compact Rounded", size: 57))
            }
        }
    }
}

#Preview {
    ContentView()
}
