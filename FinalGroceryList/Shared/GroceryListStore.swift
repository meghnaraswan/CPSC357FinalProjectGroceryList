//
//  GroceryListStore.swift
//  FinalGroceryList
//
//  Created by iMan on 5/9/22.
//

import Foundation
import SwiftUI
import Combine
class GroceryListStore : ObservableObject {
    @Published var groceryItems: [GroceryItem] //storing all grocery items in a groceryItems array member variable
    init (groceryItems: [GroceryItem] = []) {
        self.groceryItems = groceryItems
    }
}
