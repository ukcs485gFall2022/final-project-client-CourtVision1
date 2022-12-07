//
//  TaskView.swift
//  OCKSample
//
//  Created by  on 10/27/22.
//  Copyright © 2022 Network Reconnaissance Lab. All rights reserved.
//

import SwiftUI
import CareKitUI

struct TaskView: View {
    @StateObject var viewModel = TaskViewModel()
    @State var title = ""
    @State var instructions = ""
    @State var schedule = Date()

    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading) {
                    TextField("Title", text: $title)
                        .padding()
                        .cornerRadius(20.0)
                        .shadow(radius: 10.0, x: 20, y: 10)

                    TextField("Instructions", text: $instructions)
                        .padding()
                        .cornerRadius(20.0)
                        .shadow(radius: 10.0, x: 20, y: 10)

                    DatePicker("Schedule", selection: $schedule, displayedComponents: [DatePickerComponents.date])
                        .padding()
                        .cornerRadius(20.0)
                        .shadow(radius: 10.0, x: 20, y: 10)
                }

                Button(action: {
                    Task {
                        do {
                            await viewModel.addTask(title, instructions: instructions, schedule: schedule)
                        }
                    }
                }, label: {
                    Text("Save Task")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 300, height: 50)
                })
                .background(Color(.green))
                .cornerRadius(15)
            }
        }
    }
}
