//
//  ContentView.swift
//  ColorChangeSwiftUI
//
//  Created by Aleksey Efimov on 17.04.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var colorRed = Double.random(in: 0...255)
    @State private var colorGreen = Double.random(in: 0...255)
    @State private var colorBlue = Double.random(in: 0...255)
    
    var body: some View {
        VStack(spacing: 50) {
            ColorView(colorRed: colorRed, colorGreen: colorGreen, colorBlue: colorBlue)
            VStack {
                ColorSliderView(value: $colorRed, sliderColor: .red)
                ColorSliderView(value: $colorGreen, sliderColor: .green)
                ColorSliderView(value: $colorBlue, sliderColor: .blue)
            }
            Spacer()
        }
        .padding()
        .background(Color.indigo)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


