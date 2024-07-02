//
//  Anasayfa.swift
//  FilmlerUygulaması
//
//  Created by Feyzullah Durası on 22.06.2024.
//

import SwiftUI

struct Anasayfa: View {
    
    @ObservedObject var viewModel = AnasayfaViewModel()
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(viewModel.kategorilerListesi){ kategori in
                    NavigationLink(destination: FilmlerUygulaması(kategori: kategori)){
                        KategoriItem(kategori: kategori)
                    }
                }
                
            }.navigationTitle("Kategoriler")
                .onAppear{
                    viewModel.kategorilerYukle()
                }
            
        }
        
    }
}

#Preview {
    Anasayfa()
}
