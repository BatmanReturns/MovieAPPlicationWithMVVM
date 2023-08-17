//
//  ContentView.swift
//  HelloMVVM
//
//  Created by subhajit paul on 1/8/2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var counterVM: CounterViewModel
    init() {
        self.counterVM = CounterViewModel()
    }
    var body: some View {
        VStack {
            Text(counterVM.premium ? "PREMIUM" : "")
                .font(.largeTitle)
                .foregroundColor(.green)
                .frame(width: 200,height: 100)
            Text("\(counterVM.value)")
            Button {
                counterVM.increment()
            } label: {
                Text("Increment")
            }

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
