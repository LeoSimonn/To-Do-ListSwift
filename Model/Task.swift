//
//  Task.swift
//  To-Do-List
//
//  Created by Foundation15 on 10/11/23.
//

import Foundation
import SwiftUI

struct Task: Identifiable {
    let id: UUID = UUID()
    var title: String
    var isCompleted: Bool
}
