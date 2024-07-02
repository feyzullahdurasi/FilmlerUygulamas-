//
//  DetaySayfa.swift
//  FilmlerUygulaması
//
//  Created by Feyzullah Durası on 22.06.2024.
//

import SwiftUI

struct DetaySayfa: View {
    
    var film = Filmler()
    
    var body: some View {
        VStack(spacing: 50){
            AsyncImage(url: URL(string: "http://kasimadalan.pe.hu/filmler/resimler/\(film.film_resim!)"))
            
            Text(film.yonetmen!.yonetmen_ad!).font(.system(size: 30))
            
            Text(String(film.film_yil!)).font(.system(size: 50)).foregroundColor(.blue)
            
            Button("Sepete Ekle"){
                print("Detay Sayfa : \(film.film_ad!) film sepete eklendi")
            
            }.foregroundColor(.white)
                .frame(width: 250, height: 50)
                .background(.indigo)
                .cornerRadius(10)
                
        }.navigationTitle(film.film_ad!)
    }
}

#Preview {
    DetaySayfa()
}
