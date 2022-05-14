//
//  GroceryItemDetail.swift
//  FinalGroceryList
//
//  Created by iMan on 5/9/22.
//

import SwiftUI
struct GroceryItemDetail: View {
    let selectedGroceryItem: GroceryItem
    var body: some View {
        //format the GroceryItemDetail view to show grocery item image, name, and dish it belongs to 
        Form {
            Section(header: Text("Grocery Item Details")) {
                Image(selectedGroceryItem.imageName)
                    .resizable()
                    .cornerRadius(12.0)
                    .aspectRatio(contentMode: .fit)
                    .padding()
                HStack{
                    Text("Item Name")
                        .font(.title3)
                        .fontWeight(.bold)
                    Spacer()
                    Text(selectedGroceryItem.itemName)
                        .font(.title3)
                }
                HStack{
                    Text("Dish")
                        .font(.title3)
                        .fontWeight(.bold)
                    Spacer()
                    Text(selectedGroceryItem.dish)
                        .font(.title3)
                }
            }
        }
    }
}
struct GroceryItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        GroceryItemDetail(selectedGroceryItem: groceryListData[0])
    }
}
