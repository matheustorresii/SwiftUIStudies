//
//  Instagram.swift
//  SwiftUIStudies
//
//  Created by Matheus Torres on 13/02/21.
//

import SwiftUI

struct Instagram: View {
    var body: some View {
        VStack(spacing: 0) {
            InstagramHeader()
            InstagramStories()
            Divider()
                .padding(.top, 8)
            InstagramPosts()
        }.frame(minWidth: 0,
                maxWidth: .infinity,
                minHeight: 0,
                maxHeight: .infinity)
    }
}
