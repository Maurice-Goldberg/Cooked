//
//  GroceryList.swift
//  Cooked
//
//  Created by Maurice on 4/5/20.
//  Copyright © 2020 Maurice. All rights reserved.
//

import SwiftUI

class GroceryList: ObservableObject {
    @Published var items = [RecipeItem]()

    var total: Int {
        if items.count > 0 {
            return items.reduce(0) { $0 + $1.price }
        } else {
            return 0
        }
    }

    func add(item: RecipeItem) {
        items.append(item)
    }

    func remove(item: RecipeItem) {
        if let index = items.firstIndex(of: item) {
            items.remove(at: index)
        }
    }
}
