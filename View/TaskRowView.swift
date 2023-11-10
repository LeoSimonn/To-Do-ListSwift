//
//  TaskRowView.swift
//  To-Do-List
//
//  Created by Foundation15 on 10/11/23.
//

import SwiftUI

struct TaskRowView: View {
    let task: Task
    let toggleCompleted: (Task) -> Void

    var body: some View {
        HStack {
            Text(task.title)
            Spacer()
            if task.isCompleted {
                Image(systemName: "checkmark")
                    .foregroundColor(.green)
            }
        }
        .onTapGesture {
            toggleCompleted(task)
        }
    }
}


#Preview {
    ContentView()
}
