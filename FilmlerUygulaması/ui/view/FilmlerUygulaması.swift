//
//  ContentView.swift
//  FilmlerUygulaması
//
//  Created by Feyzullah Durası on 22.06.2024.
//

import SwiftUI

struct FilmlerUygulaması: View {
    
    @ObservedObject var viewModel = FilmSayfaViewModel()
    
    var kategori = Kategoriler()
    
    var body: some View {
        
            GeometryReader{ geo in
                let ekranGenislik = geo.size.width
                let itemGenislik = (ekranGenislik-40)/2
                ScrollView{
                    LazyVGrid(columns: [GridItem(.flexible()),GridItem(.flexible())],spacing: 20){
                        ForEach(viewModel.filmlerListesi){ film in
                            NavigationLink(destination: DetaySayfa(film:film)){
                                FilmItem(film: film,genislik: itemGenislik)
                            }
                        }
                    }
                    
                }.padding(10)
                    .navigationTitle(kategori.kategori_ad!)
                    
                    .onAppear{
                        viewModel.filmleriYukle(kategori_id: kategori.kategori_id!)
                    }
            }
        
    }
}

#Preview {
    FilmlerUygulaması()
}
