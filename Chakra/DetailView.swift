//
//  DetailView.swift
//  Chakra
//
//  Created by Timothy jounier on 10/01/2023.
//

import SwiftUI

struct DetailView: View {
    var chakra: Chakra
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                HStack {
                    Image(chakra.getItemName())
                        .resizable()
                        .frame(width: 150, height: 150, alignment: .center)
                    Spacer()
                    VStack(alignment: .trailing) {
                        Text(chakra.sanskrit)
                            .italic()
                            .font(.title)
                        Text(chakra.name)
                            .bold()
                            .foregroundColor(chakra.color)
                            .font(.title3)
                    }.padding(.all, 10)
                }
                Text("Position: \(chakra.position)")
                    .foregroundColor(chakra.color)
                    .font(.title2)
                    .padding(.all, 10)
                Divider()
                Text("Description")
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundColor(.secondary)
                Text(chakra.desc)
                    .padding(.all, 20)
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(chakra: allChakras()[3])
    }
}
