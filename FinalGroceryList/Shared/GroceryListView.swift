//
//  GroceryListView.swift
//  FinalGroceryList
//
//  Created by iMan on 5/10/22.
//

import SwiftUI

//grocery list view
//list all grocery items
struct GroceryListView: View {
    @StateObject private var groceryListStore : GroceryListStore = GroceryListStore(groceryItems: groceryListData) //create instance of GroceryListStore
    var body: some View {
        ZStack{
            NavigationView {
                List {
                    ForEach (groceryListStore.groceryItems) { groceryItem in
                        ListCell(groceryItem: groceryItem) //loop through the grocery list array and instantiate ListCell
                    }
                    .onDelete(perform: deleteItems) //call deleteItems function
                    .onMove(perform: moveItems) //call moveItems function
                }
                .navigationBarTitle(Text("Grocery List"))
                //button will instantiate the AddNewGroceryItem struct
                .navigationBarItems(leading: NavigationLink(destination: AddNewGroceryItem(groceryListStore: self.groceryListStore)) {
                    Text("Add")
                        .foregroundColor(.blue)
                }, trailing: EditButton())
            }
        }
    }
    
    //removes groceryItems from list
    func deleteItems(at offsets: IndexSet) {
        groceryListStore.groceryItems.remove(atOffsets: offsets)
    }
    
    //moves groceryItems in the list based on what index it is set to
    func moveItems(from source: IndexSet, to destination: Int) {
        groceryListStore.groceryItems.move(fromOffsets: source, toOffset: destination)
    }
}

struct ListCell: View {
    var groceryItem: GroceryItem
    var body: some View {
        //creating a navigation link to navigate to the GroceryItemDetail view
        NavigationLink(destination: GroceryItemDetail(selectedGroceryItem: groceryItem)) {
            HStack {
                Image(groceryItem.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 60)
                Text(groceryItem.itemName)
            }
        }
    }
}

struct GroceryListView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
