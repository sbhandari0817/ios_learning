//
//  ArticleViewModel.swift
//  NewsDisplayingApplication
//
//  Created by Santosh Bhandari on 10/26/21.
//

import Foundation

//Handle List of articles.

struct ArticleListViewModel {
    let articles: [Article]
}

extension ArticleListViewModel {
    var numberOfSections: Int {
        return 1
    }
    
    func numberOfRowsInSection (_ section: Int) -> Int {
        return self.articles.count
    }
    
    func articleAtIndex (_ index: Int) -> ArticleViewModel {
        let article  = self.articles[index]
        return ArticleViewModel(article)
    }
}

//Handle single article

struct ArticleViewModel {
    private let article: Article
    
}

extension ArticleViewModel {
    init (_ article: Article) {
        self.article = article
    }
}

extension ArticleViewModel {
    var title: String {
        return self.article.title
    }
    
    var description: String {
        return self.article.description
    }
}
