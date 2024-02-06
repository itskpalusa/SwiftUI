//
//  PageModel.swift
//  Pinch
//
//  Created by Karthik Palusa on 2/6/24.
//

import Foundation

struct Page: Identifiable {
    let id: Int
    let imageName: String
}

extension Page {
    var thumbnailName: String {
        return "thumb-" + imageName
    }
}
