//
//  Feed.swift
//  MentorMatch
//
//  Created by Joel Lacerda on 10/11/23.
//

import SwiftUI

struct Feed: View {
    var body: some View {
        NavigationStack {
            ListaCards()
            .navigationTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                Button {
                    
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

#Preview {
    Feed()
}
