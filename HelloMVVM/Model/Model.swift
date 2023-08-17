//
//  Model.swift
//  HelloMVVM
//
//  Created by subhajit paul on 1/8/2023.
//

import Foundation
struct Counter {
    var value: Int = 0
    var isPremium = false
    
    mutating func increment() {
        value += 1
        if value.isMultiple(of: 3){
            isPremium = true
        }else{
            isPremium = false
        }
    }
}
