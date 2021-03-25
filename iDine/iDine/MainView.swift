//
//  MainView.swift
//  iDine
//
//  Created by 李博 on 2021/3/25.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView().tabItem { Label("Menu", systemImage: "list.dash") }
            
            OrderView().tabItem { Label("Order", systemImage: "square.and.pencil") }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView().environmentObject(Order())
    }
}
