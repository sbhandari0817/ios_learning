//
//  ContentView.swift
//  HuliPizza
//
//  Created by Steven Lipton on 9/16/19.
//  Copyright © 2019 Steven Lipton. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var pizzas:Int
    var body: some View {
        Text(pizzas > 5 ? "Helloo Pizza!!!!" : "Hello World")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(pizzas:5)
    }
}
