//
//  CreateView.swift
//  Pulse
//
//  Created by Toope Oladunjoye on 5/21/26.
//

import SwiftUI

struct CreateView: View {
    @Binding var entries: [Mood]
    @State var feelings = ["😁", "😂", "😢", "😍", "🫩"]
    @State private var selectedIndex: Int? = nil
    @State var emoji: String = ""
    @State var entry: String = ""
    @State var date: String = Date().formatted(date: .abbreviated, time: .shortened)
    var body: some View {
        Text("How are you feeling?").font(.largeTitle)
        VStack(spacing: 25) {
            Text(date)
            HStack(spacing: 8) {
                ForEach(feelings.indices, id: \.self) { index in
                    let fe = feelings[index]
                    Button(action: {
                        emoji = fe
                        selectedIndex = index
                    }) {
                        Text(fe)
                            .padding(.vertical, 10)
                            .padding(.horizontal, 15)
                    }
                    .font(.title).background(selectedIndex == index ? Color.gray.opacity(1/6) : Color.white).clipShape(.rect(cornerRadius: 15))
                }
            }
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.gray, lineWidth: 1/4)
            )
            
            TextField("Enter your daily entry", text: $entry).padding(15).frame(width: 350, height: 200, alignment: .topLeading).overlay(
                RoundedRectangle(cornerRadius: 15).stroke(.gray, lineWidth: 1/4)
                )
            
            Button(action: {
                entries.append(Mood(mood: emoji, date: date, entry: entry))
                emoji = ""
                entry = ""
            }) {
                Text("Create")
                    .padding(.vertical, 10)
                    .padding(.horizontal, 135)
            }.buttonStyle(.glassProminent)
        }.padding(.top, 50)
    }
}

#Preview {
    ContentView()
}
