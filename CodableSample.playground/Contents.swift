import Foundation

//Data Model for Response while fetching data
//We confirm it to codeable protocol while fetching data
//It support bot encodable and decodeable.

struct Response: Codable {
    let abstract, abstractSource, abstractText: String
    let abstractURL: String
    let relatedTopics: [RelatedTopic]

    enum CodingKeys: String, CodingKey {
        case abstract = "Abstract"
        case abstractSource = "AbstractSource"
        case abstractText = "AbstractText"
        case abstractURL = "AbstractURL"
        case relatedTopics = "RelatedTopics"
            }
}

struct RelatedTopic: Codable {
    let firstURL: String
    let result, text: String

    enum CodingKeys: String, CodingKey {
        case firstURL = "FirstURL"
        case result = "Result"
        case text = "Text"
    }
}
/*
func fetchJSONResponse(completion: @escaping (Response) -> Void) {
    let urlString = "https://api.duckduckgo.com/?q=valley+forge+national+park&format=json&pretty=1"
    guard let url = URL(string: urlString) else {return}
    let request = URLRequest(url: url)
    URLSession.shared.dataTask(with: request) {
        data, res, err in
        
        if let error = err {
            print(error.localizedDescription)
            return
        }
        
        guard let data = data else {return}
        
        do {
            let response = try JSONDecoder().decode(Response.self, from: data)
            completion(response)
            //print(response)
        } catch {
            print(err?.localizedDescription ?? "none")
        }
    }.resume()
}

fetchJSONResponse {
    res in
    res.relatedTopics.forEach { topic in
        print (topic.text)
    }
    print (res.relatedTopics.count)
}
*/

struct Country: Codable {
    let name: Name
    
    
}

struct Name: Codable {
    let common: String
    let official: String
}


func fetchCountryDetail (url: String, completion: @escaping (Result<[Country], Error>) -> Void) {
    let urlString = url
    guard let url = URL(string: urlString) else {return}
    let request = URLRequest(url: url)
    URLSession.shared.dataTask(with: request) {
        data, res, err in
        
        if let error = err {
            completion(.failure(error))
            return
        }
        
        guard let data = data else {return}
        
        guard let res = res as? HTTPURLResponse else {return}
        
        if res.statusCode == 200 {
            do {
                let response = try JSONDecoder().decode([Country].self, from: data)
                completion(.success(response))
            } catch let err {
                completion(.failure(err))
            }
        }
    }.resume()
}

fetchCountryDetail(url: "https://restcountries.com/v3.1/all") {
    result in
    
    switch result {
    case .success(let countries):
        countries.forEach {country in
            print (country.name.common)
        }
    case .failure(let err):
        print(err.localizedDescription)
    }
}
