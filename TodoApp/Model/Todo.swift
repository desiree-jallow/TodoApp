//
//  Todo.swift
//  TodoApp
//
//  Created by Desiree on 4/26/21.
//

import Foundation

struct Todo: Identifiable {
    var id = UUID()
    var title = ""
    var description = ""
}
