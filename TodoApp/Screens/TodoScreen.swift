//
//  TodoScreen.swift
//  TodoApp
//
//  Created by Desiree on 4/26/21.
//

import SwiftUI

struct TodoScreen: View {
    @ObservedObject var todoStore = TodoStore()
    @State private var nextTodo = Todo()
    var body: some View {
        NavigationView {
            VStack {
                List(todoStore.todos) { todo in
                    TodoRow(todo: todo)
                }
                Form {
                    TextField("Enter Title", text: $nextTodo.title)
                    TextField("Enter Description", text: $nextTodo.description)
                    Button("Add") {
                        todoStore.todos.append(nextTodo)
                        nextTodo = Todo()
                    }
                }
            }
            .navigationBarTitle("Todo List")
        }
    }
    
}

struct TodoRow: View {
    let todo: Todo
    var body: some View {
        VStack(alignment:.leading) {
            Text(todo.title)
                .font(.headline)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            Text(todo.description)
        }
    }
}

struct TodoScreen_Previews: PreviewProvider {
    static var previews: some View {
        TodoScreen()
    }
}
