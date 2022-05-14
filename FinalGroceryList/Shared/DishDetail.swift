//
//  DishDetail.swift
//  FinalGroceryList
//
//  Created by iMan on 5/9/22.
//

import SwiftUI
struct DishDetail: View {
    let selectedDish: Dish
    @StateObject private var groceryListStore : GroceryListStore = GroceryListStore(groceryItems: groceryListData)
    var body: some View {
        //format the view to show the dish's image, its name, the meal time, and the ingedients
        Form {
            Section(header: Text("Dish Details")) {
                Image(selectedDish.imageName)
                    .resizable()
                    .cornerRadius(12.0)
                    .aspectRatio(contentMode: .fit)
                    .padding()
                HStack{
                    Text("Dish Name")
                        .font(.title3)
                        .fontWeight(.bold)
                    Spacer()
                    Text(selectedDish.dishName)
                        .font(.title3)
                }
                HStack{
                    Text("Meal Time")
                        .font(.title3)
                        .fontWeight(.bold)
                    Spacer()
                    Text(selectedDish.dishMeal)
                        .font(.title3)
                }
            }
            Section(header: Text("Ingredients")){
                ListIngredients(dish:selectedDish) //use ListIngredients to list all of the ingredients
            }
        }
    }
}

struct ListIngredients: View {
    var dish: Dish
    @StateObject private var groceryListStore : GroceryListStore = GroceryListStore(groceryItems: groceryListData)
    var body: some View {
        //loop through each item in the groceryListStore array
        ForEach (groceryListStore.groceryItems) { groceryItem in
            //if the dish in the grocery item from the groceryListStore is equal to the dishname in the dish, then use these ingredients under ingredients by displaying the image and item name
            if(groceryItem.dish == dish.dishName){
                HStack {
                    Image(groceryItem.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 60)
                    Text(groceryItem.itemName)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
            }
        }
    }
}

struct DishDetail_Previews: PreviewProvider {
    static var previews: some View {
        DishDetail(selectedDish: dishData[0])
    }
}
