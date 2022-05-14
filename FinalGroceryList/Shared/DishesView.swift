//
//  DishesView.swift
//  FinalGroceryList
//
//  Created by iMan on 5/9/22.
//

import SwiftUI

struct DishesView: View {
    @StateObject private var dishesStore : DishesStore = DishesStore(dishes: dishData) //create instance of DishesStore
    var body: some View {
        ZStack{
            NavigationView {
                List {
                    //loop through the dishes array and instantiate ListDish
                    ForEach (dishesStore.dishes) { dish in
                        ListDish(dish: dish)
                    }
                }
                .navigationBarTitle(Text("Dishes"))
            }
        }
    }
}

struct ListDish: View {
    var dish: Dish
    var body: some View {
        //creating a navigation link to navigate to the DishDetail view
        NavigationLink(destination: DishDetail(selectedDish: dish)) {
            HStack {
                Image(dish.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 60)
                Text(dish.dishName)
            }
        }
    }
}

struct DishesView_Previews: PreviewProvider {
    static var previews: some View {
        DishesView()
    }
}
