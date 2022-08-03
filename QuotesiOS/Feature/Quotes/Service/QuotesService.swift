//
//  QuotesService.swift
//  QuotesiOS
//
//  Created by Kaushal Desai on 2022-08-03.
//

import Foundation


protocol QuotesService {
    func fetchRandomQuotes() async throws -> [Quote]
}


final class QuotesServiceImplementation: QuotesService {
    
    func fetchRandomQuotes() async throws -> [Quote] {
        let urlSession = URLSession.shared
        let url = URL(string: APIConstants.baseUrl.appending("/api/quotes"))
        let (data, _) = try await urlSession.data(from: url!)
        return try JSONDecoder().decode([Quote].self, from: data)
    }
}
