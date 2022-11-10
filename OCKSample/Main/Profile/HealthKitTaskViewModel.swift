//
//  HealthKitTaskViewModel.swift
//  OCKSample
//
//  Created by  on 10/27/22.
//  Copyright © 2022 Network Reconnaissance Lab. All rights reserved.
//

import Foundation
import CareKit
import CareKitStore
import SwiftUI

class HealtKitTaskViewModel: ObservableObject {

    @Published var healthTask = OCKHealthKitTask(id: "",
                                                 title: nil,
                                                 carePlanUUID: nil,
                                                 schedule: .dailyAtTime(hour: 0,
                                                                        minutes: 0,
                                                                        start: Date(),
                                                                        end: nil,
                                                                        text: nil),
                                                 healthKitLinkage: .init(quantityIdentifier: .waterTemperature,
                                                                         quantityType: .discrete,
                                                                         unit: .fluidOunceUS()))

    @Published var error: AppError?

    // MARK: Intents
    func addTask(_ title: String, instructions: String, schedule: Date) async {
        guard AppDelegateKey.defaultValue != nil else {
            error = AppError.couldntBeUnwrapped
            return
        }

        var updateHealthTask = OCKHealthKitTask(id: title,
                                                title: title,
                                                carePlanUUID: nil,
                                                schedule: .dailyAtTime(hour: 0,
                                                                       minutes: 0,
                                                                       start: Date(),
                                                                       end: nil,
                                                                       text: nil),
                                                healthKitLinkage: .init(quantityIdentifier: .waterTemperature,
                                                                        quantityType: .discrete,
                                                                        unit: .fluidOunceUS()))

        updateHealthTask.instructions = instructions

        do {
            try await AppDelegateKey.defaultValue?.healthKitStore.addTasksIfNotPresent([updateHealthTask])
        } catch {
            self.error = AppError.errorString("Couldn't add task: \(error.localizedDescription)")
        }
    }
}
