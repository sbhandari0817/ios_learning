//
//  PageTitleView.swift
//  HuliPizza
//
//  Created by Steven Lipton on 9/16/19.
//  Copyright © 2019 Steven Lipton. All rights reserved.
//

import SwiftUI

struct PageTitleView: View {
    var title:String
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.light)
            Spacer()
        }.overlay(
            Image(systemName:"chevron.up.square")
                .font(.title)
            .padding()
            ,alignment: .trailing
        )
    }
}


struct PageTitleView_Previews: PreviewProvider {
    static var previews: some View {
        PageTitleView(title:"Order Pizza")
    }
}
