//
//  ContentView.swift
//  To-Do-List
//
//  Created by Foundation15 on 10/11/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = TaskListViewModel()
    @State private var taskTitle = "" // Armazena o título da nova tarefa
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    TextField("New Task", text: $taskTitle)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    
                    Button(action: addTask) {
                        Text("Add")
                    }
                    .padding()
                }
                
                List {
                    ForEach(viewModel.tasks) { task in
                        NavigationLink(destination: TaskDetailView(task: task)) {
                            TaskRowView(task: task, toggleCompleted: viewModel.toggleIsCompleted)
                        }
                    }
                    .onDelete(perform: viewModel.deleteTask)
                }
                .listStyle(PlainListStyle())
            }
            .navigationTitle("To-Do List")
        }
    }
    
    private func addTask() {
        viewModel.addTask(title: taskTitle)
        taskTitle = "" // Limpa o campo após adicionar a tarefa
    }
}

#Preview {
    ContentView()
}
