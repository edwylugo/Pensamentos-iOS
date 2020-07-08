//
//  Quote.swift
//  Pensamentos
//
//  Created by EPR Exatron on 07/08/2018.
//  Copyright © 2018 Exatron. All rights reserved.
//

import Foundation

//Representa um pensamento

//Codable é um apelido para 2 protocolos
//Encodable quando convertida em um formato. Transformar em arquivo,
//Decodable pegar Json extrair um objeto

struct Quote: Codable {
    
    let quote: String //proprio pensamento
    let author: String //nome do autor
    let image: String //imagem do autor
    
    var quoteFormatted: String {
        return " ‟" + quote + "〞"
        
    }
    
    var authorFormatted: String {
        return "- " + author + " -"
    }
    
    
}
