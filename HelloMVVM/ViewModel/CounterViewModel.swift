//
//  CounterViewModel.swift
//  HelloMVVM
//
//  Created by subhajit paul on 1/8/2023.
//

import Foundation

class CounterViewModel: ObservableObject {
    
    @Published private var counter = Counter()
    
    var value: Int {
        counter.value
    }
    var premium: Bool {
        counter.isPremium
    }
    func increment()  {
        counter.increment()
    }
    
}
