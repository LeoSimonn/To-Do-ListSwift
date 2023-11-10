//
//  TaskListViewModel.swift
//  To-Do-List
//
//  Created by Foundation15 on 10/11/23.
//

import Foundation
import SwiftUI

class TaskListViewModel: ObservableObject {
    @Published var tasks = [Task]()
    
    func addTask(title: String) {
        let newTask = Task(title: title, isCompleted: false)
        tasks.append(newTask)
    }
    
    func deleteTask(at indexSet: IndexSet) {
        tasks.remove(atOffsets: indexSet)
    }
    
    func toggleIsCompleted(for task: Task) {
        if let index = tasks.firstIndex(where: { $0.id == task.id }) {
            tasks[index].isCompleted.toggle()
        }
    }

    
    
    
}
