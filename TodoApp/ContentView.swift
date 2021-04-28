//
//  ContentView.swift
//  TodoApp
//
//  Created by Desiree on 4/26/21.
//

import SwiftUI

struct ContentView: View {
    @State private var selection  = 0
    var body: some View {
        TabView(selection: $selection,
                content:  {
                    TodoScreen().tabItem { Text("Todos") }.tag(1)
                   CondensedScreen().tabItem { Text("Condensed") }.tag(2)
                })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
