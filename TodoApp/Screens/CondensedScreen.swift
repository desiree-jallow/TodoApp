//
//  CondensedScreen.swift
//  TodoApp
//
//  Created by Desiree on 4/28/21.
//

import SwiftUI

struct CondensedScreen: View {
    @ObservedObject var todoStore = StoreManager.instance.todoStore
    var body: some View {
        List(todoStore.todos) { todo in
            Text(todo.title)
        }
    }
}

struct CondensedScreen_Previews: PreviewProvider {
    static var previews: some View {
        CondensedScreen()
    }
}
