//
//  GroceryItem.swift
//  FinalGroceryList
//
//  Created by iMan on 5/9/22.
//

import Foundation
import SwiftUI

//struct for each grocey item and their attributes
struct GroceryItem : Codable, Identifiable {
    var id: String
    var itemName: String
    var dish: String
    var imageName: String
}
