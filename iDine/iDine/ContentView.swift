//
//  ContentView.swift
//  iDine
//
//  Created by 李博 on 2021/3/24.
//

import SwiftUI

struct ContentView: View {
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    var body: some View {
        NavigationView {
            List {
                ForEach(menu) { section in
                    Section(header: Text(section.name)) {
                        ForEach(section.items) { item in
                            NavigationLink(
                                destination: ItemDetail(item: item)) {
                                ItemRow(item: item)
                            }
                        }
                    }
                }
            }
        }
        .navigationTitle("Menu")
        .listStyle(GroupedListStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
