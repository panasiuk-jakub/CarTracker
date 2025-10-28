//
//  RepairEntry.swift
//  CarTracker
//
//  Created by Jakub Krysiak on 28/10/2025.
//
import Foundation
import SwiftData

@Model
final class RepairEntry {
    // Unikalny identyfikator
    var id: UUID
    
    // Dane o naprawie / wpisie
    var title: String              // np. "Wymiana oleju", "Nowe klocki hamulcowe"
    var additionalInfo: String?       // dodatkowe informacje (np. uwagi mechanika)
    var partCost: Double           // koszt części
    var laborCost: Double          // koszt robocizny
    var totalCost: Double          // suma kosztów (części + robocizna)
    var mileageAtRepair: Double    // przebieg w momencie naprawy
    var date: Date                 // data wykonania naprawy
    
    // Relacja do samochodu
    @Relationship(inverse: \Car.repairs)
    var car: Car?

    // Inicjalizator
    init(
        id: UUID = UUID(),
        title: String,
        description: String? = nil,
        partCost: Double,
        laborCost: Double,
        mileageAtRepair: Double,
        date: Date = .now,
        car: Car? = nil
    ) {
        self.id = id
        self.title = title
        self.additionalInfo = description
        self.partCost = partCost
        self.laborCost = laborCost
        self.totalCost = partCost + laborCost
        self.mileageAtRepair = mileageAtRepair
        self.date = date
        self.car = car
    }
}
