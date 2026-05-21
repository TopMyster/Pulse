//
//  MoodView.swift
//  Pulse
//
//  Created by Toope Oladunjoye on 5/21/26.
//

import SwiftUI

struct MoodView: View {
    @Binding var entries: [Mood]
    var body: some View {
        if !entries.isEmpty {
            List(entries) {ent in
                Text(ent.date)
                Text(ent.mood)
                Text(ent.entry)
            }
        } else {
            Text("No entries yet...😁").opacity(2/4)
        }
    }
}

#Preview {
    ContentView()
}
