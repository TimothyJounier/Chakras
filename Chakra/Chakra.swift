//
//  Chakra.swift
//  Chakra
//
//  Created by Timothy jounier on 10/01/2023.
//

import SwiftUI

struct Chakra: Identifiable {
    var id: Int
    var name: String
    var sanskrit: String
    var color: Color
    var position: String
    var desc: String
    
    func getItemName() -> String {
        return "chakra-\(id)"
    }
}
