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
        Text(title)
            .font(.largeTitle)
    }
}


struct PageTitleView_Previews: PreviewProvider {
    static var previews: some View {
        PageTitleView(title:"Order Pizza")
    }
}
