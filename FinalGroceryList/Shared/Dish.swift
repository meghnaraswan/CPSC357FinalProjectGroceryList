//
//  Dish.swift
//  FinalGroceryList
//
//  Created by iMan on 5/9/22.
//

import Foundation
import SwiftUI

//struct for each dish and their attributes
struct Dish : Codable, Identifiable {
    var id: String
    var dishName: String
    var dishMeal: String
    var mealTime: String
    var imageName: String
}
