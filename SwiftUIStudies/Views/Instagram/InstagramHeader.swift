//
//  InstagramHeader.swift
//  SwiftUIStudies
//
//  Created by Matheus Torres on 13/02/21.
//

import SwiftUI

struct InstagramHeader: View {
    var body: some View {
        HStack {
            Image("instagram")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 40)
            
            Spacer()
            
            HStack(alignment: .center, spacing: 30) {
                Image(systemName: "plus.app")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image(systemName: "heart")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image(systemName: "paperplane")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            .frame(height: 25)
        }
        .frame(height: 50, alignment: .top)
        .padding(.horizontal, 12)
    }
}
