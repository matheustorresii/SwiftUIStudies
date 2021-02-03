//
//  Kotlin.swift
//  SwiftUIStudies
//
//  Created by Matheus Torres on 03/02/21.
//

import SwiftUI

struct Kotlin: View {
    var body: some View {
        ZStack {
            Path { path in
                path.move(to: CGPoint(x: 0, y: 0))
                path.addLine(to: CGPoint(x: 300, y: 300))
                path.addLine(to: CGPoint(x: 0, y: 300))
            }.fill(LinearGradient(gradient: Gradient(colors: [.purple, .blue]),
                                  startPoint: .topTrailing,
                                  endPoint: .bottomLeading))
            Path { path in
                path.move(to: CGPoint(x: 0, y: 0))
                path.addLine(to: CGPoint(x: 300, y: 0))
                path.addLine(to: CGPoint(x: 0, y: 300))
            }.fill(LinearGradient(gradient:Gradient(colors: [.orange, .purple]),
                                  startPoint: .topTrailing,
                                  endPoint: .bottomLeading))
            Path { path in
                path.move(to: CGPoint(x: 0, y: 0))
                path.addLine(to: CGPoint(x: 150, y: 0))
                path.addLine(to: CGPoint(x: 0, y: 150))
            }.fill(LinearGradient(gradient:Gradient(colors: [.purple, .blue]),
                                  startPoint: .topTrailing,
                                  endPoint: .bottomLeading))
            .frame(width: 150, height: 150, alignment: .center)
            .position(CGPoint(x: 75, y: 75))
        }.frame(width: 300, height: 300, alignment: .center)
    }
}
