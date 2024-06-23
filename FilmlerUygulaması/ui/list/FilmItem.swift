//
//  filmItem.swift
//  FilmlerUygulaması
//
//  Created by Feyzullah Durası on 22.06.2024.
//

import SwiftUI

struct FilmItem: View {
    var film = Filmler()
    var genislik = 0.0
    var body: some View {
        VStack(spacing: 5){
            Image(film.film_resim!).resizable().frame(width: genislik)
            Text(film.film_ad!).foregroundColor(.gray)
            Text("Sepete Ekle")
                .padding(5)
                .foregroundColor(.white)
                .background(.indigo)
                .cornerRadius(5)
                .padding(.bottom, 5)
            
        }.background(Rectangle().fill(.white).shadow(radius: 3))
    }
}

/*#Preview {
    filmItem()
}*/
