//
//  AppView.swift
//  Cooked
//
//  Created by Maurice on 4/5/20.
//  Copyright © 2020 Maurice. All rights reserved.
//

import SwiftUI

struct AppView: View {
    
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("Recipes")
                }
            
            GroceryListView()
                .tabItem {
                    // replace this with some sort of bag icon
                    Image(systemName: "square.and.pencil")
                    Text("Grocery List")
                }
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static let groceryList = GroceryList()
    static var previews: some View {
        AppView().environmentObject(groceryList)
    }
}
