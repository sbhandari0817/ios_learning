//
//  Context.swift
//  Assessment
//
//  Created by Santosh Bhandari on 11/18/21.
//

import Foundation
import UIKit

struct Context {
    static let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
}

