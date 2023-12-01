//
//  MentorMatchApp.swift
//  MentorMatch
//
//  Created by Joel Lacerda on 03/11/23.
//

import SwiftUI
import SwiftData

@main
struct MentorMatchApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Pergunta.self)
    }
}
