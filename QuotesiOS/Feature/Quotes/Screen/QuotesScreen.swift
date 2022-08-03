//
//  QuotesScreen.swift
//  QuotesiOS
//
//  Created by Kaushal Desai on 2022-08-03.
//

import SwiftUI

struct QuotesScreen: View {
    
    
    @StateObject private var vm = QuotesViewModelImplementation(
        service: QuotesServiceImplementation()
    )
    
//    init() {
//            self._vm = StateObject(wrappedValue: QuotesViewModel(service: QuotesService))
//        }
//    
    var body: some View{
        
        Group {
            if vm.quotes.isEmpty {
                VStack(spacing: 8) {
                    ProgressView()
                    Text("Fetching Quotes")
                }
            } else {
                List {
                    ForEach(vm.quotes, id: \.anime) { item in
                        QouteView(item: item)
                    }
                }
            }
        }
        .task {
            await vm.getRandomQuotes()
        }
    }
    
}

struct QuotesScreen_Previews: PreviewProvider {
    static var previews: some View {
        QuotesScreen()
    }
}
