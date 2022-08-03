//
//  QuotesViewModel.swift
//  QuotesiOS
//
//  Created by Kaushal Desai on 2022-08-03.
//

import Foundation


protocol QuotesViewModel: ObservableObject {
    
    func getRandomQuotes() async
}

@MainActor
final class QuotesViewModelImplementation: QuotesViewModel {
    
    @Published private(set) var quotes: [Quote] = []
    
    private let service: QuotesService
    
    init(service: QuotesService) {
        self.service = service
    }
    
    func getRandomQuotes() async {
        do {
            self.quotes = try await service.fetchRandomQuotes()
        } catch {
            print(error)
        }
    }
}
