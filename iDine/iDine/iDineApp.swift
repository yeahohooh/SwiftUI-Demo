//
//  iDineApp.swift
//  iDine
//
//  Created by 李博 on 2021/3/24.
//

import SwiftUI

@main
struct iDineApp: App {
    @StateObject var order = Order()
    var body: some Scene {
        WindowGroup {
            MainView().environmentObject(order)
        }
    }
}
