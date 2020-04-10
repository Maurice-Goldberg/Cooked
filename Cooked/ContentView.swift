//
//  ContentView.swift
//  Cooked
//
//  Created by Maurice on 4/4/20.
//  Copyright © 2020 Maurice. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let recipes = Bundle.main.decode([RecipesSection].self,
                                     from: "recipes.json")
    
    init() {
        UINavigationBar.appearance().titleTextAttributes = [.font : UIFont(name: "Georgia-Bold", size: 35)!]
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(recipes) { section in
                    Section(header:
                        Text(section.name)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .font(.system(size: 20))
                    ) {
                        ForEach(section.items) { item in
                            RecipeRow(item: item)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Recipes"), displayMode: .inline)
            .listStyle(GroupedListStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
