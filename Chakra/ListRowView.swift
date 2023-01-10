//
//  ListRowView.swift
//  Chakra
//
//  Created by Timothy jounier on 10/01/2023.
//

import SwiftUI

struct ListRowView: View {
    var chakra: Chakra
    var body: some View {
        NavigationLink(
            destination: DetailView(chakra: chakra),
            label: {
                HStack {
                    Image(chakra
                        .getItemName())
                        .resizable()
                        .frame(width: 50, height: 50, alignment: .center)
                    VStack(alignment: .leading) {
                        Text(chakra.sanskrit)
                            .font(.title3)
                            .italic()
                        Text(chakra.name)
                            .bold()
                            .foregroundColor(chakra.color)
                    }
                }
            })
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(chakra: allChakras()[1]).previewLayout(.sizeThatFits)
    }
}
