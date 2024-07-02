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
        let url = URL(string: "http://kasimadalan.pe.hu/filmler/tum_kategoriler.php")!
        
        URLSession.shared.dataTask(with: url){ data,response,error in
            do{
                let cevap = try JSONDecoder().decode(KategorilerCevap.self, from: data!)
                if let liste = cevap.kategoriler {
                    DispatchQueue.main.async {
                        self.kategorilerListesi = liste
                    }
                }
            } catch {
                print(error.localizedDescription)
            }
        }.resume()
        
        
    }
    
    
}
