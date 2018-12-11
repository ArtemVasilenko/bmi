//
//  Model.swift
//  bmi
//
//  Created by Артем on 12/11/18.
//  Copyright © 2018 Артем. All rights reserved.
//

import Foundation

struct Bmi {
    var height: Double
    var weight: Double
    
    init(height: Double, weight: Double) {
        self.height = height
        self.weight = weight
    }
    
    
    func bmiCalc () -> String {
        let bmi = String(height + weight)
        return bmi
    }
    
    
    
}







