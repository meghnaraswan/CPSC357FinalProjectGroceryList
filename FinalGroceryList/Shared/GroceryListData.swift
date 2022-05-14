//
//  GroceryListData.swift
//  FinalGroceryList
//
//  Created by iMan on 5/9/22.
//

import Foundation

import UIKit
import SwiftUI
var groceryListData: [GroceryItem] = loadJson("groceryListData.json") //load json file with all of the grocery items
var dishData: [Dish] = loadJson("dishesData.json") //load json file with all of the dishes 
func loadJson<T: Decodable>(_ filename: String) -> T {
    let data: Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("\(filename) not found.")
    }
    do {
        data = try Data(contentsOf: file)
    } catch {
    fatalError("Could not load \(filename): \(error)")
    }
    do {
        return try JSONDecoder().decode(T.self, from: data)
    } catch {
        fatalError("Unable to parse \(filename): \(error)")
    }
}
