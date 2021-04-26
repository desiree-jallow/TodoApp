//
//  TodoStore.swift
//  TodoApp
//
//  Created by Desiree on 4/26/21.
//

import Combine

class TodoStore: ObservableObject {
    var objectWillChange = ObservableObjectPublisher()
    var todos: [Todo] = [] {
        willSet {
            objectWillChange.send()
        }
    }
   
    init() {
        fetchTodos()
    }
    
    func fetchTodos() {
       todos = [
            Todo(title: "Buy eggs", description: "Make sure to get the 12 pack"),
            Todo(title: "Buy the Lambo", description: "Get it in red"),
            Todo(title: "Mow the lawn", description: "Hire someone")
       ]
    }
}
