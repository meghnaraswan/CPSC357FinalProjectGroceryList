//
//  DishesStore.swift
//  FinalGroceryList
//
//  Created by iMan on 5/9/22.
//

import Foundation
import SwiftUI
import Combine
class DishesStore : ObservableObject {
    @Published var dishes: [Dish] //storing all dishes in a dishes array member variable
    init (dishes: [Dish] = []) {
        self.dishes = dishes
    }
}
