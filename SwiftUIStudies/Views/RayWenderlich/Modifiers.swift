//
//  RaySunnyCardExample.swift
//  SwiftUIStudies
//
//  Created by Matheus Torres on 11/02/21.
//

import SwiftUI

struct RaySunnyCardExample: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.white, .blue]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            VStack {
                Image(systemName: "sun.max.fill")
                    .resizable()
                    .frame(width: 100, height: 100, alignment: .center)
                    .foregroundColor(.yellow)
                Text("Sunny")
                    .font(.system(size: 50, weight: .bold, design: .default))
                    .foregroundColor(.white)
                Text("H: 61° L: 44°")
                    .font(.system(size: 35, weight: .light, design: .default))
                    .foregroundColor(.white)
                    .opacity(0.7)
                    
            }
        }.frame(width: 250, height: 280, alignment: .center)
        .cornerRadius(15.0)
    }
}
