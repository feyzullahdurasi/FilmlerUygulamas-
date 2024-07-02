//
//  Kategoriler.swift
//  FilmlerUygulaması
//
//  Created by Feyzullah Durası on 22.06.2024.
//

import Foundation

class Kategoriler : Identifiable, Codable {
    var kategori_id:String?
    var kategori_ad:String?
    
    init(){
        
    }
    
    init(kategori_id: String? = nil, kategori_ad: String? = nil) {
        self.kategori_id = kategori_id
        self.kategori_ad = kategori_ad
    }
}
