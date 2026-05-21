//
//  ContentView.swift
//  Pulse
//
//  Created by Toope Oladunjoye on 5/21/26.
//

import SwiftUI

struct ContentView: View {
    @State var entries: [Mood] = []
    var body: some View {
            Label("Pulse", systemImage: "heart.circle").font(.title)
        .padding()
        
        TabView {
            Tab("Entries", systemImage: "text.book.closed") {
                MoodView(entries: $entries)
            }
            Tab("Create", systemImage: "plus") {
                CreateView(entries: $entries)
            }
        }
    }
}

#Preview {
    ContentView()
}
