//
//  Image+stringUrl.swift
//  SwiftUIStudies
//
//  Created by Matheus Torres on 13/02/21.
//

import SwiftUI

extension Image {
    init(stringUrl: String) {
        let url = URL(string: stringUrl)!
        if let data = try? Data(contentsOf: url) {
            self.init(uiImage: UIImage(data: data)!)
            return
        }
        self.init("")
    }
}
