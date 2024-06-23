//
//  AnasayfaViewModel.swift
//  FilmlerUygulaması
//
//  Created by Feyzullah Durası on 22.06.2024.
//

import Foundation

class AnasayfaViewModel : ObservableObject {
    
    @Published var kategorilerListesi = [Kategoriler]()
    
    func kategorilerYukle(){
        var liste = [Kategoriler]()
        let k1 = Kategoriler(kategori_id: 1, kategori_ad: "Aksiyon")
        let k2 = Kategoriler(kategori_id: 2, kategori_ad: "Drama")
        let k3 = Kategoriler(kategori_id: 3, kategori_ad: "Bilim Kurgu")
        let k4 = Kategoriler(kategori_id: 4, kategori_ad: "Gerilim")
        liste.append(k1)
        liste.append(k2)
        liste.append(k3)
        liste.append(k4)
        
        kategorilerListesi = liste
    }
}
