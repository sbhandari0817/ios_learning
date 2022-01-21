//
//  GarmentDataModel.swift
//  Assessment
//
//  Created by Santosh Bhandari on 11/18/21.
//

import Foundation

class GarmentDataViewModel{
    var garments: [Garment]
    
    init() {
        self.garments = [Garment]()
    }
    func addGarmentSort() {
        self.garments = self.garments.sorted(by: {$0.name < $1.name})
    }                                        
}



