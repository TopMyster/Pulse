//
//  Mood.swift
//  Pulse
//
//  Created by Toope Oladunjoye on 5/21/26.
//

import SwiftUI

struct Mood: Identifiable {
    var id = UUID()
    var mood: String
    var date: String
    var entry: String
}
