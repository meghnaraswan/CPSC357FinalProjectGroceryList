//
//  AddNewGroceryItem.swift
//  FinalGroceryList
//
//  Created by iMan on 5/9/22.
//

import SwiftUI

struct AddNewGroceryItem: View {
    
    //member variables
    @StateObject var groceryListStore : GroceryListStore
    @State private var itemName: String = ""
    @State private var dish: String = ""
    var dishes = ["SALAD", "SMOOTHIE", "PIZZA", "SUSHI", "PANCAKE", "NONE"] //list of dishes
    var colors: [Color] = [.green, .pink, .orange, .blue, .yellow, .black] //list of colors (which will correspond to each dish)
    @State private var colorIndex = 0
    
    var body: some View {
        VStack{
            //format the AddNewGroceryItem view to show cart image, item name, dish it belongs to using a wheel picker, and add item button to add the item to the groceryListStore array
            Form {
                Section(header: Text("Grocery Item Details")) {
                    Image(systemName: "cart")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding()
                    DataInput(title: "Item Name", userInput: $itemName) //input the name of item by instantiating DataInput
                    Text("Dishes")
                        .fontWeight(.bold)
                    Picker(selection: $colorIndex, label: Text("Color")) {
                        ForEach (0 ..< dishes.count) {
                            Text(dishes[$0]) //display dish text
                                .foregroundColor(colors[$0]) //color will correspond to the dish based on the index
                        }
                    }
                    .pickerStyle(WheelPickerStyle())
                }
            }
            Button(action: addNewGroceryItem) {
                Text("Add Item")
            }.padding()
        }
    }
    
    //add grocery item attributes to GroceryItem with the item name inputed, dish selected in the array by the wheel picker, and default image of groceries
    //add the item to the groceryListStore array
    func addNewGroceryItem() {
        let newGroceryItem = GroceryItem(id: UUID().uuidString, itemName: itemName, dish: dishes[colorIndex], imageName: "groceries" )
        groceryListStore.groceryItems.append(newGroceryItem)
    }
}

struct DataInput: View {
    //item name will be based on user input
    var title: String
    @Binding var userInput: String
    var body: some View {
        VStack(alignment: HorizontalAlignment.leading) {
            Text(title)
                .font(.headline)
            TextField("Enter \(title)", text: $userInput)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
        .padding()
    }
}

struct AddNewGroceryItem_Previews: PreviewProvider {
    static var previews: some View {
        AddNewGroceryItem(groceryListStore: GroceryListStore(groceryItems: groceryListData))
    }
}
