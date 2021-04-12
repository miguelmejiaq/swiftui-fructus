//
//  FruitModel.swift
//  Fructus
//
//  Created by Miguel Angel Mejia Quiroga on 12/04/21.
//

import SwiftUI

// MARK: - FRUITS DATA MODEL

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColor: [Color]
    var description: String
    var nutrition: [String]
}
