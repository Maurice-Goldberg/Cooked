//
//  GroceryListView.swift
//  Cooked
//
//  Created by Maurice on 4/5/20.
//  Copyright © 2020 Maurice. All rights reserved.
//

import SwiftUI

struct GroceryListView: View {
    @ObservedObject var groceryList: GroceryList
    
    @State private var showingClearAlert = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(groceryList.items, id: \.name) { item in
                    HStack {
                        GroceryRow(item: item)
                    }
                }.onDelete(perform: removeItems)
            }.navigationBarTitle(Text("Grocery List"), displayMode: .inline)
                .navigationBarItems(
                    leading: EditButton()
                    .font(.headline)
                    .padding(5)
                    .background(Color.black)
                    .foregroundColor(Color.white)
                    .offset(x: 8, y: -5),
                    
                    trailing: Button(action: {}) {
                    Text("Clear").font(.headline)
                        .padding(5)
                        .background(Color.black)
                        .foregroundColor(Color.white)
                        .offset(y: -5)
                        
                })
            .listStyle(GroupedListStyle())
        }
    }
    
    private func removeItems(at offsets: IndexSet) {
        groceryList.items.remove(atOffsets: offsets)
    }
}

struct GroceryListView_Previews: PreviewProvider {
    static let groceryList = GroceryList()
    
    static var previews: some View {
        GroceryListView().environmentObject(groceryList)
    }
}
