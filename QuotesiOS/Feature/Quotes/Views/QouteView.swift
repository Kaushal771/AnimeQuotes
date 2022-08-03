//
//  QouteView.swift
//  QuotesiOS
//
//  Created by Kaushal Desai on 2022-08-03.
//

import SwiftUI

struct QouteView: View {
    
    let item: Quote
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Image(systemName: "tv")
                    .font(.system(size: 12, weight: .black))
                Text(item.anime)
            }
            
            Text(makeAttributedString(title:"Character", label: item.character))
            Text(makeAttributedString(title:"Qoutes", label: item.quote))
                .lineLimit(2)

        }
        .padding()
        .foregroundColor(.black)
    }
    
    
    
    private func makeAttributedString(title: String, label: String) -> AttributedString {
        var string = AttributedString("\(title): \(label)")
        string.foregroundColor = .black
        string.font = .systemFont(ofSize: 16, weight: .bold)
        
        if let range = string.range(of: label) {
            string[range].foregroundColor = .black.opacity(0.8)
            string[range].font = .system(size: 16, weight: .regular)
        }
        
        return string
        
        
    }
}

struct QouteView_Previews: PreviewProvider {
    static var previews: some View {
        QouteView(item: Quote.dummyData.first!)
    }
}
