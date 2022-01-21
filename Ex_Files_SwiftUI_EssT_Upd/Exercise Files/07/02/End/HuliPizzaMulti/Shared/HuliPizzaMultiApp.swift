//
//  HuliPizzaMultiApp.swift
//  Shared
//
//  Created by Steven Lipton on 1/1/21.
//

import SwiftUI

@main
struct HuliPizzaMultiApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(orderModel: OrderModel()).environmentObject(UserPreferences())
        }
    }
}
