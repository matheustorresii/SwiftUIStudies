//
//  State&Binding.swift
//  SwiftUIStudies
//
//  Created by Matheus Torres on 11/02/21.
//

import SwiftUI

struct RaySwiftyStateExample: View {
    @State private var swiftyColor: Color = .red
    @State private var swiftyOpacity: Double = 0.7
    
    var body: some View {
        VStack {
            SwiftyControls(swiftyColor: $swiftyColor, swiftyOpacity: $swiftyOpacity)
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .padding(25)
                .foregroundColor(.white)
                .opacity(swiftyOpacity)
                .background(swiftyColor)
                .cornerRadius(50)
        }
        .padding()
    }
}

struct SwiftyControls: View {
    @Binding var swiftyColor: Color
    @Binding var swiftyOpacity: Double
    
    var body: some View {
        ColorPicker("Swifty Color", selection: $swiftyColor)
        Slider(value: $swiftyOpacity, in: 0...1)
            .accentColor(swiftyColor)
    }
}
