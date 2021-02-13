//
//  StateChallenge.swift
//  SwiftUIStudies
//
//  Created by Matheus Torres on 11/02/21.
//

import SwiftUI


struct RaySwiftyStateChallenge: View {
    private enum Mood: String {
        case happy = "😁"
        case sad = "😭"
        case cat = "🐱"
    }
    
    @State private var name: String = ""
    @State private var color: Color = .green
    @State private var mood: Mood = .happy
    
    var body: some View {
        VStack {
            Text("Set your status:")
                .font(.title)
            TextField("Your name here", text: $name)
                .font(.title)
                .padding(10)
                .overlay(RoundedRectangle(cornerRadius: 15.0).stroke())
            ColorPicker("Favorite Color", selection: $color)
                .font(.title)
            Picker("Mood", selection: $mood) {
                Text(Mood.happy.rawValue).tag(Mood.happy)
                Text(Mood.sad.rawValue).tag(Mood.sad)
                Text(Mood.cat.rawValue).tag(Mood.cat)
            }.pickerStyle(SegmentedPickerStyle())
            
            VStack {
                Text(mood.rawValue)
                    .font(.system(size: 70, weight: .bold, design: .default))
                Text(name).font(.system(size: 30, weight: .semibold, design: .default))
            }.frame(width: 150, height: 150, alignment: .center)
            .background(color)
            .cornerRadius(15.0)
            
        }
        .padding(15)
    }
}

