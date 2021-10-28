//
//  Article.swift
//  NewsDisplayingApplication
//
//  Created by Santosh Bhandari on 10/26/21.
//

import Foundation

struct ArticleList: Decodable {
    let articles: [Article]
}

struct Article: Decodable {
    let title: String
    let description: String
}
