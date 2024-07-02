//
//  Filmler.swift
//  FilmlerUygulaması
//
//  Created by Feyzullah Durası on 22.06.2024.
//

import Foundation

class Filmler : Identifiable, Codable {
    var film_id:String?
    var film_ad:String?
    var film_yil:String?
    var film_resim:String?
    var kategori:Kategoriler?
    var yonetmen:Yonetmenler?
    
    init(){
        
    }
    
    init(film_id: String? = nil, film_ad: String? = nil, film_yil: String? = nil, film_resim: String? = nil, kategori: Kategoriler? = nil, yonetmen: Yonetmenler? = nil) {
        self.film_id = film_id
        self.film_ad = film_ad
        self.film_yil = film_yil
        self.film_resim = film_resim
        self.kategori = kategori
        self.yonetmen = yonetmen
    }
}
