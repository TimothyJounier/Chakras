//
//  ContentView.swift
//  Chakra
//
//  Created by Timothy jounier on 10/01/2023.
//

import SwiftUI

struct ContentView: View {
    var chakras: [Chakra] = allChakras()
    var body: some View {
        NavigationView {
            VStack {
                Image("banner")
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    .clipped()
                List {
                    Section(header: Text("Liste des Chakras")) {
                        ForEach(chakras) { chakra in
                            ListRowView(chakra: chakra)
                        }
                    }
                }.listStyle(PlainListStyle())
            }
            .navigationTitle("Les 7 Chakras")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
