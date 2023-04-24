//
//  ColorView.swift
//  ColorChangeSwiftUI
//
//  Created by Aleksey Efimov on 24.04.2023.
//

import SwiftUI

struct ColorView: View {
    let colorRed: Double
    let colorGreen: Double
    let colorBlue: Double
    
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

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(colorRed: 100, colorGreen: 100, colorBlue: 100)
    }
}
