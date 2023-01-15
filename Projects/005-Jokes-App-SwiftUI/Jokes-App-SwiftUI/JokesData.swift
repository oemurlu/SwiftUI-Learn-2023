//
//  JokesData.swift
//  Jokes-App-SwiftUI
//
//  Created by Osman Emre Ömürlü on 14.12.2022.
//

import Foundation

// veriyi List gorunumunde yazdirabilmek icin Identifiable yaptik.

// MARK: - Welcome
struct Welcome: Codable, Identifiable {
    let joke: String
    let id: Int
}


