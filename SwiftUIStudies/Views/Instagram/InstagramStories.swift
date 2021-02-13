//
//  InstagramStories.swift
//  SwiftUIStudies
//
//  Created by Matheus Torres on 13/02/21.
//

import SwiftUI

struct InstagramStories: View {
    let users: [InstagramUserModel] = [
        InstagramUserModel(name: "Your Story",
                           color: .gray,
                           imageUrl: .me),
        InstagramUserModel(name: "teo33rocha",
                           color: .black,
                           imageUrl: .teo),
        InstagramUserModel(name: "theuelias",
                           color: .black,
                           imageUrl: .elias),
        InstagramUserModel(name: "heitormrr",
                           color: .black,
                           imageUrl: .heitor),
        InstagramUserModel(name: "saviobld",
                           color: .black,
                           imageUrl: .saveta),
        InstagramUserModel(name: "xande.01",
                           color: .black,
                           imageUrl: .xande),
        InstagramUserModel(name: "isaperez._",
                           color: .black,
                           imageUrl: .isa),
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(users) { user in
                    InstagramStoryView(name: user.name,
                                        color: user.color,
                                        imageURL: user.imageUrl)
                }
            }
            .padding(.leading, 4)
            .frame(height: 90)
        }
    }
}

struct InstagramUserModel: Identifiable {
    var id: String { name }
    let name: String
    let color: Color
    let imageUrl: InstagramStoriesImages
}

struct InstagramStoryView: View {
    let name: String
    let color: Color
    let imageURL: InstagramStoriesImages
    
    var body: some View {
        VStack(alignment: .center) {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.pink, .yellow]),
                               startPoint: .topTrailing,
                               endPoint: .bottomLeading)
                    .cornerRadius(64)
                Circle().stroke(Color.white, lineWidth: 1)
                    .frame(width: 60, height: 60)
                Image(stringUrl: imageURL.rawValue)
                    .resizable()
                    .frame(width: 58, height: 58)
                    .cornerRadius(58)
                    
            }.frame(width: 64, height: 64)
            Text(name)
                .foregroundColor(color)
                .font(.system(size: 15))
                .frame(width: 80, height: 15)
        }
    }
}

enum InstagramStoriesImages: String {
    case me = "https://instagram.fplu9-1.fna.fbcdn.net/v/t51.2885-19/s150x150/21879310_1636625649715199_4827439839366348800_n.jpg?_nc_ht=instagram.fplu9-1.fna.fbcdn.net&_nc_ohc=WClVPvBvCcEAX_7WtM5&tp=1&oh=cb3fe4c25329107724a5a8d246bb7646&oe=604F3429"
    case teo = "https://instagram.fplu9-1.fna.fbcdn.net/v/t51.2885-19/s320x320/134747610_753282055606698_6506846385712228094_n.jpg?_nc_ht=instagram.fplu9-1.fna.fbcdn.net&_nc_ohc=DAc3Ukn3lwEAX9sXsVk&tp=1&oh=3d37273a5053f7ca67d803e8d7ea1ff6&oe=60514B0C"
    case elias = "https://instagram.fplu9-1.fna.fbcdn.net/v/t51.2885-19/s320x320/75333939_266784418014119_2880212121033900032_n.jpg?_nc_ht=instagram.fplu9-1.fna.fbcdn.net&_nc_ohc=b5Y7kWIBoqAAX9h0ZzK&tp=1&oh=361d2837f15ad526e12a092ce90317fa&oe=604F6E76"
    case heitor = "https://instagram.fpoa27-1.fna.fbcdn.net/v/t51.2885-19/44884218_345707102882519_2446069589734326272_n.jpg?_nc_ht=instagram.fpoa27-1.fna.fbcdn.net&_nc_ohc=Tozzka4qhygAX8qmRyd&oh=d80e31bc281942b2eacf91138de6a194&oe=6050148F&ig_cache_key=YW5vbnltb3VzX3Byb2ZpbGVfcGlj.2"
    case saveta = "https://instagram.fplu9-1.fna.fbcdn.net/v/t51.2885-19/s320x320/143032652_821284295395341_3834413439132296211_n.jpg?_nc_ht=instagram.fplu9-1.fna.fbcdn.net&_nc_ohc=BohqDqVS1SEAX8oMab4&tp=1&oh=5966cf1728b2639ef32085034daf526d&oe=6050ED91"
    case xande = "https://instagram.fplu9-1.fna.fbcdn.net/v/t51.2885-19/s320x320/73521715_570197593749949_5056059002912243712_n.jpg?_nc_ht=instagram.fplu9-1.fna.fbcdn.net&_nc_ohc=ftOpoh5h5EMAX_Tm4XQ&tp=1&oh=c98aea149bfbce38366d16ee98a92eb5&oe=605049D3"
    case isa = "https://instagram.fplu9-1.fna.fbcdn.net/v/t51.2885-19/s320x320/139574976_397198814682633_4187505612601562273_n.jpg?_nc_ht=instagram.fplu9-1.fna.fbcdn.net&_nc_ohc=vV5m1o51yPQAX-EnoXo&tp=1&oh=df8ba5b0794b611e07bd35ddeeb37de9&oe=60519EB9"
}
