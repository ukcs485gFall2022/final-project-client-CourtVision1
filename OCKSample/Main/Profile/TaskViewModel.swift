//
//  TaskViewModel.swift
//  OCKSample
//
//  Created by  on 10/27/22.
//  Copyright © 2022 Network Reconnaissance Lab. All rights reserved.
//

import Foundation
import CareKit
import CareKitStore
import SwiftUI

class TaskViewModel: ObservableObject {

    @Published var task = OCKTask(id: "",
                                  title: nil,
                                  carePlanUUID: nil,
                                  schedule: .dailyAtTime(hour: 0,
                                                         minutes: 0,
                                                         start: Date(),
                                                         end: nil,
                                                         text: nil))
    @Published var error: AppError?

    // MARK: Intents
    func addTask(_ title: String, instructions: String, schedule: Date) async {
        guard let appDelegate = AppDelegateKey.defaultValue else {
            error = AppError.couldntBeUnwrapped
            return
        }

        var updateTask = OCKTask(id: title,
                                 title: title,
                                 carePlanUUID: nil,
                                 schedule: .dailyAtTime(hour: 0,
                                                        minutes: 0,
                                                        start: Date(),
                                                        end: nil,
                                                        text: nil))

        updateTask.instructions = instructions

        do {
            try await appDelegate.store?.addTasksIfNotPresent([updateTask])
        } catch {
            self.error = AppError.errorString("Couldn't add task: \(error.localizedDescription)")
        }
    }
}
