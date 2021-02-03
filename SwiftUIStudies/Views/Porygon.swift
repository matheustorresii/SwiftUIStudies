//
//  Porygon.swift
//  SwiftUIStudies
//
//  Created by Matheus Torres on 03/02/21.
//

import SwiftUI

struct Porygon: View {
    var body: some View {
        ZStack {
            PorygonLeftFoot()
            PorygonRightFoot()
            PorygonTail()
            PorygonBody()
            PorygonHead()
        }.frame(width: 300, height: 300, alignment: .center)
    }
}

struct PorygonHead: View {
    var body: some View {
        ZStack {
            Path { path in
                path.move(to: CGPoint(x: 0, y: 190))
                path.addLine(to: CGPoint(x: 40, y: 200))
                path.addLine(to: CGPoint(x: 130, y: 170))
                path.addLine(to: CGPoint(x: 170, y: 110))
                path.addLine(to: CGPoint(x: 175, y: 80))
                path.addLine(to: CGPoint(x: 140, y: 40))
                path.addLine(to: CGPoint(x: 100, y: 30))
                path.addLine(to: CGPoint(x: 50, y: 60))
                path.addLine(to: CGPoint(x: 10, y: 130))
            }.fill(Color(red: 225/255, green: 95/255, blue: 105/255))
            Path { path in
                path.move(to: CGPoint(x: 80, y: 160))
                path.addLine(to: CGPoint(x: 100, y: 180))
                path.addLine(to: CGPoint(x: 130, y: 170))
                path.addLine(to: CGPoint(x: 170, y: 110))
                path.addLine(to: CGPoint(x: 175, y: 80))
                path.addLine(to: CGPoint(x: 135, y: 100))
            }.fill(Color(red: 159/255, green: 75/255, blue: 83/255))
            Path { path in
                path.move(to: CGPoint(x: 10, y: 130))
                path.addLine(to: CGPoint(x: 50, y: 60))
                path.addLine(to: CGPoint(x: 100, y: 30))
                path.addLine(to: CGPoint(x: 125, y: 36))
                path.addLine(to: CGPoint(x: 110, y: 80))
                path.addLine(to: CGPoint(x: 60, y: 150))
            }.fill(Color(red: 243/255, green: 198/255, blue: 203/255))
            Path { path in
                path.move(to: CGPoint(x: 40, y: 200))
                path.addLine(to: CGPoint(x: 100, y: 180))
                path.addLine(to: CGPoint(x: 80, y: 160))
            }.fill(Color(red: 73/255, green: 116/255, blue: 123/255))
            Path { path in
                path.move(to: CGPoint(x: 35, y: 200))
                path.addLine(to: CGPoint(x: 40, y: 200))
                path.addLine(to: CGPoint(x: 80, y: 160))
                path.addLine(to: CGPoint(x: 60, y: 150))
            }.fill(Color(red: 81/255, green: 170/255, blue: 178/255))
            Path { path in
                path.move(to: CGPoint(x: 35, y: 200))
                path.addLine(to: CGPoint(x: 0, y: 190))
                path.addLine(to: CGPoint(x: 10, y: 130))
                path.addLine(to: CGPoint(x: 60, y: 150))
            }.fill(Color(red: 154/255, green: 204/255, blue: 209/255))
            Path { path in
                path.move(to: CGPoint(x: 110, y: 80))
                path.addLine(to: CGPoint(x: 80, y: 90))
                path.addLine(to: CGPoint(x: 75, y: 130))
                path.addLine(to: CGPoint(x: 99, y: 140))
                path.addLine(to: CGPoint(x: 125, y: 135))
                path.addLine(to: CGPoint(x: 135, y: 100))
            }.fill(Color(red: 226/255, green: 218/255, blue: 223/255))
            Circle()
                .fill(Color.black)
                .frame(width: 15, height: 15, alignment: .center)
                .position(x: 100, y: 115)
        }.frame(width: 300, height: 300, alignment: .center)
        .rotationEffect(headAnimated ? .degrees(0) : .degrees(20))
        .onAppear {
            withAnimation(headAnimation) {
                headAnimated.toggle()
            }
        }
    }
    
    
    @State var headAnimated: Bool = false
    var headAnimation: Animation {
        return Animation.linear(duration: 0.5).repeatForever()
    }
}

struct PorygonBody: View {
    var body: some View {
        ZStack {
            Path { path in
                path.move(to: CGPoint(x: 255, y: 170))
                path.addLine(to: CGPoint(x: 180, y: 250))
                path.addLine(to: CGPoint(x: 140, y: 240))
                path.addLine(to: CGPoint(x:80, y: 200))
                path.addLine(to: CGPoint(x:100, y: 120))
                path.addLine(to: CGPoint(x:210, y: 110))
                path.addLine(to: CGPoint(x:240, y: 130))
            }.fill(Color(red: 225/255, green: 95/255, blue: 108/255))
            Path { path in
                path.move(to: CGPoint(x: 180, y: 250))
                path.addLine(to: CGPoint(x: 160, y: 220))
                path.addLine(to: CGPoint(x: 240, y: 130))
                path.addLine(to: CGPoint(x: 255, y: 170))
            }.fill(Color(red: 159/255, green: 75/255, blue: 83/255))
            Path { path in
                path.move(to: CGPoint(x: 180, y: 250))
                path.addLine(to: CGPoint(x: 140, y: 240))
                path.addLine(to: CGPoint(x: 80, y: 200))
                path.addLine(to: CGPoint(x: 160, y: 220))
            }.fill(Color(red: 72/255, green: 110/255, blue: 114/255))
            Path { path in
                path.move(to: CGPoint(x: 80, y: 200))
                path.addLine(to: CGPoint(x: 160, y: 220))
                path.addLine(to: CGPoint(x: 180, y: 170))
                path.addLine(to: CGPoint(x: 150, y: 115))
                path.addLine(to: CGPoint(x: 100, y: 120))
            }.fill(Color(red: 80/255, green: 172/255, blue: 179/255))
            Path { path in
                path.move(to: CGPoint(x: 80, y: 200))
                path.addLine(to: CGPoint(x: 160, y: 220))
                path.addLine(to: CGPoint(x: 100, y: 120))
            }.fill(Color(red: 194/255, green: 223/255, blue: 227/255))
        }.frame(width: 300, height: 300, alignment: .center)
        .rotationEffect(bodyAnimated ? .degrees(-5) : .degrees(5))
        .onAppear {
            withAnimation(bodyAnimation) {
                bodyAnimated.toggle()
            }
        }
    }
    
    @State var bodyAnimated: Bool = false
    var bodyAnimation: Animation {
        return Animation.linear(duration: 1.0).repeatForever()
    }
}

struct PorygonTail: View {
    var body: some View {
        ZStack {
            Path { path in
                path.move(to: CGPoint(x: 245, y: 130))
                path.addLine(to: CGPoint(x: 260, y: 20))
                path.addLine(to: CGPoint(x: 250, y: 0))
                path.addLine(to: CGPoint(x: 240, y: 0))
                path.addLine(to: CGPoint(x: 200, y: 130))
                path.addLine(to: CGPoint(x: 220, y: 140))
            }.fill(Color(red: 72/255, green: 110/255, blue: 114/255))
            Path { path in
                path.move(to: CGPoint(x: 250, y: 0))
                path.addLine(to: CGPoint(x: 240, y: 0))
                path.addLine(to: CGPoint(x: 200, y: 130))
                path.addLine(to: CGPoint(x: 220, y: 140))
            }.fill(Color(red: 192/255, green: 226/255, blue: 233/255))
        }.frame(width: 300, height: 300, alignment: .center)
        .rotationEffect(tailAnimated ? .degrees(10) : .degrees(0))
        .onAppear {
            withAnimation(tailAnimation) {
                tailAnimated.toggle()
            }
        }
    }
    
    @State var tailAnimated: Bool = false
    var tailAnimation: Animation {
        return Animation.linear(duration: 0.5).repeatForever()
    }
}

struct PorygonRightFoot: View {
    var body: some View {
        ZStack {
            Path { path in
                path.move(to: CGPoint(x: 100, y: 230))
                path.addLine(to: CGPoint(x: 60, y: 210))
                path.addLine(to: CGPoint(x: 65, y: 120))
                path.addLine(to: CGPoint(x: 150, y: 120))
            }.fill(Color(red: 72/255, green: 110/255, blue: 114/255))
            Path { path in
                path.move(to: CGPoint(x: 90, y: 225))
                path.addLine(to: CGPoint(x: 60, y: 210))
                path.addLine(to: CGPoint(x: 65, y: 120))
                path.addLine(to: CGPoint(x: 100, y: 120))
            }.fill(Color(red: 80/255, green: 172/255, blue: 179/255))
        }.frame(width: 300, height: 300, alignment: .center)
        .rotationEffect(rightFootAnimated ? .degrees(10) : .degrees(-10))
        .onAppear {
            withAnimation(rightFootAnimation) {
                rightFootAnimated.toggle()
            }
        }
    }
    
    @State var rightFootAnimated: Bool = false
    var rightFootAnimation: Animation {
        return Animation.linear(duration: 1.0).repeatForever()
    }
}

struct PorygonLeftFoot: View {
    var body: some View {
        ZStack {
            Path { path in
                path.move(to: CGPoint(x: 300, y: 190))
                path.addLine(to: CGPoint(x: 300, y: 220))
                path.addLine(to: CGPoint(x: 250, y: 300))
                path.addLine(to: CGPoint(x: 200, y: 280))
                path.addLine(to: CGPoint(x: 190, y: 260))
                path.addLine(to: CGPoint(x: 210, y: 180))
                path.addLine(to: CGPoint(x: 250, y: 160))
            }.fill(Color(red: 72/255, green: 110/255, blue: 114/255))
            Path { path in
                path.move(to: CGPoint(x: 190, y: 260))
                path.addLine(to: CGPoint(x: 210, y: 180))
                path.addLine(to: CGPoint(x: 275, y: 210))
                path.addLine(to: CGPoint(x: 245, y: 285))
            }.fill(Color(red: 196/255, green: 225/255, blue: 229/255))
            Path { path in
                path.move(to: CGPoint(x: 210, y: 180))
                path.addLine(to: CGPoint(x: 275, y: 210))
                path.addLine(to: CGPoint(x: 300, y: 190))
                path.addLine(to: CGPoint(x: 250, y: 160))
            }.fill(Color(red: 80/255, green: 175/255, blue: 179/255))
        }.frame(width: 300, height: 300, alignment: .center)
        .rotationEffect(leftFootAnimated ? .degrees(-10) : .degrees(10))
        .onAppear {
            withAnimation(leftFootAnimation) {
                leftFootAnimated.toggle()
            }
        }
    }
    
    @State var leftFootAnimated: Bool = false
    var leftFootAnimation: Animation {
        return Animation.linear(duration: 1.0).repeatForever()
    }
}
