//
//  InstagramPosts.swift
//  SwiftUIStudies
//
//  Created by Matheus Torres on 13/02/21.
//

import SwiftUI

struct InstagramPostModel: Identifiable {
    var id: String { name }
    let name: String
    let imageUrl: InstagramStoriesImages
    let userThatLiked: String
    let comments: String
    let time: String
}

struct InstagramPosts: View {
    let posts: [InstagramPostModel] = [
        InstagramPostModel(name: "teo33rocha",
                           imageUrl: .teo,
                           userThatLiked: "saviobld",
                           comments: "6",
                           time: "2"),
        InstagramPostModel(name: "saviobld",
                           imageUrl: .saveta,
                           userThatLiked: "theuelias",
                           comments: "12",
                           time: "5"),
    ]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            ForEach(posts) { post in
                InstagramPostView(model: post)
            }
        }.frame(minWidth: 0,
                maxWidth: .infinity,
                minHeight: 0,
                maxHeight: .infinity)
    }
}

struct InstagramPostView: View {
    let model: InstagramPostModel
    
    var body: some View {
        VStack {
            InstagramPostHeader(imageUrl: model.imageUrl.rawValue,
                                name: model.name)
            InstagramPostImage(imageUrl: model.imageUrl.rawValue)
            InstagramPostControls(userThatLiked: model.userThatLiked,
                                  comments: model.comments,
                                  time: model.time)
        }
        .frame(width: .infinity)
    }
}

struct InstagramPostHeader: View {
    let imageUrl: String
    let name: String
    
    var body: some View {
        HStack {
            Image(stringUrl: imageUrl)
                .resizable()
                .frame(width: 35, height: 35)
                .cornerRadius(35)
                .padding(.horizontal, 8)
            Text(name)
                .foregroundColor(.black)
                .font(.system(size: 16))
            Spacer()
            Image(systemName: "ellipsis")
                .padding(.horizontal, 16)
        }
        .frame(width: .infinity)
        .padding(.top, 8)
    }
}

struct InstagramPostImage: View {
    let imageUrl: String
    
    var body: some View {
        Image(stringUrl: imageUrl)
            .resizable()
            .frame(width: .infinity)
            .aspectRatio(contentMode: .fit)
    }
}

struct InstagramPostControls: View {
    let userThatLiked: String
    let comments: String
    let time: String
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "heart")
                    .resizable()
                    .frame(width: 28, height: 28)
                    .padding(.horizontal, 4)
                Image(systemName: "bubble.right")
                    .resizable()
                    .frame(width: 28, height: 28)
                    .padding(.horizontal, 4)
                Image(systemName: "paperplane")
                    .resizable()
                    .frame(width: 28, height: 28)
                    .padding(.horizontal, 4)
                Spacer()
                Image(systemName: "bookmark")
                    .resizable()
                    .frame(width: 28, height: 28)
                    .padding(.horizontal, 4)
            }
            .frame(width: .infinity, height: 40)
            HStack(spacing: 0) {
                Text("Liked by")
                Text(" \(userThatLiked) ")
                    .fontWeight(.bold)
                Text("and")
                Text(" others ")
                    .fontWeight(.bold)
            }
            .frame(width: .infinity, height: 20)
            Text("View all \(comments) comments")
                .foregroundColor(.gray)
            Text("\(time) hours ago")
                .foregroundColor(.gray)
        }
        .frame(width: .infinity)
        .padding(.horizontal, 8)
    }
}
