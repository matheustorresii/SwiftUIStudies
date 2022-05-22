//
//  Twitter.swift
//  SwiftUIStudies
//
//  Created by Matheus Torres on 21/05/22.
//

import SwiftUI

struct Twitter: View {
    @State var reset: Bool = true
    @State var start: CGFloat = .zero
    @State var end: CGFloat = .zero
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            TwitterShape()
                .stroke(style: .init(lineWidth: 2.5,
                                     lineCap: .round,
                                     lineJoin: .round,
                                     miterLimit: 5))
                .foregroundColor(.white)
                .opacity(0.35)
            TwitterShape()
                .trim(from: start, to: end)
                .stroke(style: .init(lineWidth: 5,
                                     lineCap: .round,
                                     lineJoin: .round,
                                     miterLimit: 10))
                .foregroundColor(.blue)
                .onAppear(perform: didAppear)
        }
    }
    
    func didAppear() {
        Timer.scheduledTimer(withTimeInterval: 0.35, repeats: true) { _ in
            if self.end >= 1, self.reset {
                Timer.scheduledTimer(withTimeInterval: 1, repeats: false) { _ in
                    self.end = .zero
                    self.start = .zero
                    self.reset.toggle()
                }
                self.reset = false
            }
            withAnimation(.easeOut(duration: 0.5)) {
                self.end += 0.1
                self.start = self.end - 0.3
            }
        }
    }
}

struct TwitterShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: .init(x: 0, y: 285))
        path.addCurve(to: .init(x: 100, y: 245),
                      control1: .init(x: 30, y: 285),
                      control2: .init(x: 80, y: 265))
        
        // Lower Wing
        path.addCurve(to: .init(x: 40, y: 200),
                      control1: .init(x: 80, y: 240),
                      control2: .init(x: 50, y: 220))
        path.addCurve(to: .init(x: 80, y: 195),
                      control1: .init(x: 80, y: 200),
                      control2: .init(x: 75, y: 195))
        
        // Mid Wing
        path.addCurve(to: .init(x: 15, y: 130),
                      control1: .init(x: 35, y: 180),
                      control2: .init(x: 20, y: 150))
        path.addCurve(to: .init(x: 55, y: 140),
                      control1: .init(x: 60, y: 145),
                      control2: .init(x: 55, y: 140))
        
        // Upper Wing
        path.addCurve(to: .init(x: 25, y: 40),
                      control1: .init(x: 40, y: 130),
                      control2: .init(x: 15, y: 100))
        path.addCurve(to: .init(x: 150, y: 100),
                      control1: .init(x: 80, y: 90),
                      control2: .init(x: 110, y: 90))
        
        // Head
        path.addCurve(to: .init(x: 250, y: 30),
                      control1: .init(x: 150, y: 90),
                      control2: .init(x: 160, y: 0))
        
        // Upped Beak
        path.addCurve(to: .init(x: 290, y: 15),
                      control1: .init(x: 260, y: 30),
                      control2: .init(x: 290, y: 18))
        path.addCurve(to: .init(x: 265, y: 50),
                      control1: .init(x: 275, y: 50),
                      control2: .init(x: 265, y: 50))
        
        // Lower Beak
        path.addCurve(to: .init(x: 300, y: 40),
                      control1: .init(x: 275, y: 50),
                      control2: .init(x: 290, y: 50))
        path.addCurve(to: .init(x: 275, y: 75),
                      control1: .init(x: 285, y: 75),
                      control2: .init(x: 275, y: 75))
        
        // Body
        path.addCurve(to: .init(x: 0, y: 285),
                      control1: .init(x: 280, y: 285),
                      control2: .init(x: 60, y: 300))
        
        return path
    }
}

struct Twitter_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            TwitterShape()
                .stroke(style: .init(lineWidth: 2.5,
                                     lineCap: .round,
                                     lineJoin: .round,
                                     miterLimit: 5))
                .foregroundColor(.blue)
                .padding()
        }
    }
}
