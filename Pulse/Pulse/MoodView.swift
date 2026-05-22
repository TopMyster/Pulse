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
            VStack(spacing: 10) {
                ForEach(entries) { ent in
                    VStack(alignment: .leading, spacing: 6) {
                        Text(ent.date == Date().formatted(date: .abbreviated, time: .shortened) ? "Just now": ent.date)
                            .font(.footnote)
                            .foregroundStyle(.secondary)
                            .bold()

                        Text(ent.mood)
                            .font(.system(size: 34, weight: .bold))

                        Text(ent.entry)
                            .font(.body)
                            .foregroundStyle(.primary)
                            .lineLimit(nil)
                       
                    }
                    .padding(.vertical, 8)

                    Divider()
                }
            }
        } else {
            Text("No entries yet...😁").opacity(2/4)
        }
    }
}

#Preview {
    MoodView(entries: .constant([
        Mood(mood: "😁", date: Date().formatted(date: .abbreviated, time: .shortened), entry: "Blah blah blah blah blah")
    ]))
}
