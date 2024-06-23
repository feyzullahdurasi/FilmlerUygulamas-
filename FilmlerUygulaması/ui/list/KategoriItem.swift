//
//  KategoriItem.swift
//  FilmlerUygulaması
//
//  Created by Feyzullah Durası on 22.06.2024.
//

import SwiftUI

struct KategoriItem: View {
    var kategori = Kategoriler()
    
    var body: some View {
        Text(kategori.kategori_ad!)
    }
}

#Preview {
    KategoriItem()
}
