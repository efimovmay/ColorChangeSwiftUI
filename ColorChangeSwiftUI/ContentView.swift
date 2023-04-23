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
        VStack(spacing: 10) {
            ColorView(colorRed: $colorRed, colorGreen: $colorGreen, colorBlue: $colorBlue)
            ColorSliderView(value: $colorRed, sliderColor: .red)
            ColorSliderView(value: $colorGreen, sliderColor: .green)
            ColorSliderView(value: $colorBlue, sliderColor: .blue)
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

struct ColorView: View {
    @Binding var colorRed: Double
    @Binding var colorGreen: Double
    @Binding var colorBlue: Double
    
    var body: some View {
        Rectangle()
            .frame(height: 180)
            .cornerRadius(20)
            .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(.white, lineWidth: 3))
            .foregroundColor(
                Color(
                    red: colorRed / 255,
                    green: colorGreen / 255,
                    blue: colorBlue / 255)
            )
    }
}

struct ColorSliderView: View {
    @Binding var value: Double
    let sliderColor: Color
    
    var body: some View {
        HStack(spacing: 16) {
            Text("\(lround(value))")
                .frame(width: 33)
            Slider(value: $value, in: 1...255, step: 1)
                .accentColor(sliderColor)
            TextField("", value: $value, formatter:  NumberFormatter())
                .textFieldStyle(.roundedBorder)
                .frame(width: 45)
                .keyboardType(.numberPad)
        }
    }
}
