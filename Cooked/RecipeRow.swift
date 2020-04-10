//
//  RecipeRow.swift
//  Cooked
//
//  Created by Maurice on 4/4/20.
//  Copyright © 2020 Maurice. All rights reserved.
//

import SwiftUI

struct RecipeRow: View {
    var item: RecipeItem
    
    var body: some View {
        NavigationLink(destination: ItemDetail(item: item)) {
            HStack {
                Text(item.name).font(.system(size: 24))
            }
        }
    }
}

struct RecipeRow_Previews: PreviewProvider {
    static var previews: some View {
        RecipeRow(item: RecipeItem.example)
    }
}
