//
//  WebService.swift
//  NewsDisplayingApplication
//
//  Created by Santosh Bhandari on 10/26/21.
//

import Foundation

class WebServices {
    
    func getArticles(url:URL, completion:@escaping ([Article]?) -> ()) {
        
        URLSession.shared.dataTask(with: url) {
            data, response, error in
            
            if let error = error {
                print (error.localizedDescription)
                completion (nil)
                
            }
            
            guard let data = data else {
                return
            }
            do {
                let articles = try JSONDecoder().decode(ArticleList.self, from: data)
                completion (articles.articles)
            } catch let error {
                print (error.localizedDescription)
                completion (nil)
            }
        }.resume()
        
    }
}
