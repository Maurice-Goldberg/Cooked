//
//  ItemDetail.swift
//  Cooked
//
//  Created by Maurice on 4/4/20.
//  Copyright © 2020 Maurice. All rights reserved.
//

import SwiftUI

struct ItemDetail: View {
    @EnvironmentObject var groceryList: GroceryList
    var item: RecipeItem

    var body: some View {
        VStack {
            Text(item.description)
                .padding()
            Button("Add ingredient") {
                self.groceryList.add(item: self.item)
            }.font(.headline)
            Spacer()
            }.navigationBarTitle(Text(item.name), displayMode: .inline)
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static let groceryList = GroceryList()
    
    static var previews: some View {
        NavigationView {
            ItemDetail(item: RecipeItem.example).environmentObject(groceryList)
        }
    }
}
