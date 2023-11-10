//
//  TaskDetailView.swift
//  To-Do-List
//
//  Created by Foundation15 on 10/11/23.
//

import SwiftUI

import SwiftUI

struct TaskDetailView: View {
    var task: Task // Recebe a tarefa a ser detalhada
    @State private var taskDetail = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(task.title)
                .font(.largeTitle)
            
            TextEditor(text: $taskDetail)
                .padding()
                .frame(minHeight: 150) // Define uma altura mínima
            
            Spacer()
        }
        .padding()
        .navigationTitle("Detalhes da Tarefa")
    }
}


#Preview {
    ContentView()
}
