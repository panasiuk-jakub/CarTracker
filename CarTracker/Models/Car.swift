//
//  Car.swift
//  CarTracker
//
//  Created by Jakub Krysiak on 07/10/2025.
//

import Foundation
import SwiftData

@Model
final class Car {
    // Podstawowe dane o aucie
    var id: UUID
    var name: String
    var brand: String
    var model: String
    var year: Int?
    var purchaseDate: Date?
    var purchaseCost: Double?

    // Dane eksploatacyjne
    var mileage: Double
    var totalExpenses: Double
    var lastServiceDate: Date?

    // Powiązania z naprawami
    @Relationship(deleteRule: .cascade)
    var repairs: [RepairEntry] = []

    // Inicjalizator
    init(
        id: UUID = UUID(),
        name: String,
        brand: String,
        model: String,
        year: Int? = nil,
        purchaseDate: Date? = nil,
        purchaseCost: Double? = nil,
        mileage: Double = 0,
        totalExpenses: Double = 0,
        lastServiceDate: Date? = nil
    ) {
        self.id = id
        self.name = name
        self.brand = brand
        self.model = model
        self.year = year
        self.purchaseDate = purchaseDate
        self.purchaseCost = purchaseCost
        self.mileage = mileage
        self.totalExpenses = totalExpenses
        self.lastServiceDate = lastServiceDate
    }
}
