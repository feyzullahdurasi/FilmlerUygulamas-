//
//  FilmSayfaViewModel.swift
//  FilmlerUygulaması
//
//  Created by Feyzullah Durası on 22.06.2024.
//

import Foundation

class FilmSayfaViewModel : ObservableObject {
    
    @Published var filmlerListesi = [Filmler]()
    
    func filmleriYukle(kategori_id:Int){
        var liste = [Filmler]()
        let k1 = Kategoriler(kategori_id: 1, kategori_ad: "Aksiyon")
        let k2 = Kategoriler(kategori_id: 2, kategori_ad: "Drama")
        let k3 = Kategoriler(kategori_id: 3, kategori_ad: "Bilim Kurgu")
        let k4 = Kategoriler(kategori_id: 4, kategori_ad: "Gerilim")
        let y1 = Yonetmenler(yonetmen_id: 1, yonetmen_ad: "Quentin Tarantino")
        let y2 = Yonetmenler(yonetmen_id: 2, yonetmen_ad: "Christopher Nolan")
        let y3 = Yonetmenler(yonetmen_id: 3, yonetmen_ad: "Nuri Bilge Ceylan")
        let y4 = Yonetmenler(yonetmen_id: 4, yonetmen_ad: "Roman Polanski")
        let y5 = Yonetmenler(yonetmen_id: 5, yonetmen_ad: "Greg Nicotero")
        
        let f7 = Filmler(film_id: 7, film_ad: "Django", film_yil: 2014, film_resim: "django", kategori: k1, yonetmen: y1)
        let f2 = Filmler(film_id: 2, film_ad: "Interstellar", film_yil: 2015, film_resim: "interstellar", kategori: k3, yonetmen: y2)
        let f3 = Filmler(film_id: 3, film_ad: "Inception", film_yil: 2010, film_resim: "inception", kategori: k3, yonetmen: y2)
        let f4 = Filmler(film_id: 4, film_ad: "Anadoluda", film_yil: 2011, film_resim: "birzamanlaranadoluda", kategori: k2, yonetmen: y3)
        let f5 = Filmler(film_id: 5, film_ad: "The Pianist", film_yil: 2008, film_resim: "thepianist", kategori: k2, yonetmen: y4)
        let f6 = Filmler(film_id: 6, film_ad: "The Hateful Eight", film_yil: 2017, film_resim: "thehatefuleight", kategori: k1, yonetmen: y1)
        let f1 = Filmler(film_id: 1, film_ad: "The Walking Dead", film_yil: 2010, film_resim: "theWalkingDead", kategori: k4, yonetmen: y5)
        
        liste.append(f1)
        liste.append(f2)
        liste.append(f3)
        liste.append(f4)
        liste.append(f5)
        liste.append(f6)
        liste.append(f7)
        
        let finalListe = liste.filter({ $0.kategori!.kategori_id == kategori_id})

        filmlerListesi = finalListe
    }
    
}
