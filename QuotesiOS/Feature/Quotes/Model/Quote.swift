//
//  Quote.swift
//  QuotesiOS
//
//  Created by Kaushal Desai on 2022-08-03.
//

import Foundation

struct Quote: Decodable {
    let anime: String
    let character: String
    let quote: String
}


extension Quote {
    
    static let dummyData: [Quote] = [
        Quote(anime: "Anime 1", character: "Character 1", quote: "Random Quote 1"),
        Quote(anime: "Anime 2", character: "Character 2", quote: "Random Quote 2"),
        Quote(anime: "Anime 3", character: "Character 3", quote: "Random Quote 3"),
        Quote(anime: "Anime 4", character: "Character 4", quote: "Random Quote 4")
    
    
    
    ]
    
}
