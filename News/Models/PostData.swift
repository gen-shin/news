//
//  PostData.swift
//  News
//
//  Created by Zhen YAN on 2020/06/13.
//  Copyright © 2020 Zhen YAN. All rights reserved.
//

import Foundation

struct PostData: Decodable {
    let articles : [Post]
}

struct Post: Decodable, Identifiable{
    var id: String {
        return publishedAt
    }
    let publishedAt: String
    let url: String
    let title: String
    let author: String?
}
