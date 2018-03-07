	//
//  BMIModel.swift
//  BMI-Calculator-1
//
//  Created by user136776 on 2/24/18.
//  Copyright © 2018 user136776. All rights reserved.
//

import Foundation
    
    class BMIModel {
        var height: Double
        var weight: Double
        
        init(height:Double,weight:Double) {
            self.height = height
            self.weight = weight
        }
        
        func calcBMI() -> Double {
            return weight / (height * height)
        }
    }
