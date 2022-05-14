//
//  ContentView.swift
//  Shared
//
//  Created by iMan on 5/9/22.
//

import SwiftUI

//main view
struct ContentView: View {
    @State private var selection = 1
    var body: some View {
        TabView(selection: $selection) {
            
            //first tab: DishesView
            DishesView()
                .tabItem {
                    Image(systemName: "staroflife.fill")
                    Text("Dishes")
                } .tag(1)
            //second tab: MealTimeDishes
            MealTimeDishes()
                .tabItem {
                    Image(systemName: "clock")
                    Text("Meal Time")
                } .tag(2)
            //third tab: GroceryListView
            GroceryListView()
                .tabItem {
                    Image(systemName: "list.star")
                    Text("Grocery List")
                } .tag(3)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
