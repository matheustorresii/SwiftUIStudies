//
//  RayFirstExample.swift
//  SwiftUIStudies
//
//  Created by Matheus Torres on 11/02/21.
//

import SwiftUI

struct RayFirstExample: View {
    var body: some View {
        VStack {
            Image(systemName: "swift")
                .resizable()
                .frame(width: 300, height: 300, alignment: .center)
                .padding(.all, 15)
                .background(Color.orange)
                .cornerRadius(150)
            Text("Howdy, world!")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .kerning(5.0)
                .padding([.top, .bottom], 30)
        }
    }
}
