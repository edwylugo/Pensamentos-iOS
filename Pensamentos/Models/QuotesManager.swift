//
//  QuotesManager.swift
//  Pensamentos
//
//  Created by EPR Exatron on 07/08/2018.
//  Copyright © 2018 Exatron. All rights reserved.
//

import Foundation

class QuotesManager {
    
    let quotes: [Quote]
    
    //JSON
    init() {
        //lendo arquivo JSON, fileURL(caminho físico)
        let fileURL = Bundle.main.url(forResource: "quotes", withExtension: "json")! //.main devolve uma instancia
        let jsonData = try! Data(contentsOf: fileURL)
        let jsonDecoder = JSONDecoder()
        quotes = try! jsonDecoder.decode([Quote].self, from: jsonData)
    }
    
    func getRandomQuote() -> Quote {
        let index = Int(arc4random_uniform(UInt32(quotes.count)))
        return quotes[index]
    }
}
