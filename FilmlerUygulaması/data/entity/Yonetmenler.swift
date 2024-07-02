//
//  Yonetmenler.swift
//  FilmlerUygulaması
//
//  Created by Feyzullah Durası on 22.06.2024.
//

import Foundation

class Yonetmenler : Identifiable, Codable {
    var yonetmen_id:String?
    var yonetmen_ad:String?
    
    init(){
        
    }
    
    init(yonetmen_id: String? = nil, yonetmen_ad: String? = nil) {
        self.yonetmen_id = yonetmen_id
        self.yonetmen_ad = yonetmen_ad
    }
}
