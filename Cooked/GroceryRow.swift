//
//  GroceryRow.swift
//  Cooked
//
//  Created by Maurice on 4/5/20.
//  Copyright © 2020 Maurice. All rights reserved.
//

import SwiftUI

struct GroceryRow: View {
    var item: RecipeItem
    
    @State var isChecked:Bool = false
    
    func toggle() { isChecked = !isChecked }
    
    var body: some View {
        Button(action: toggle) {
            HStack {
                Image(systemName: isChecked ? "checkmark.square": "square" )
                    .resizable().frame(width: 23.0, height: 23.0)
                Text(item.name).foregroundColor(Color.black).font(.system(size: 20))
            }
        }
    }
}

struct GroceryRow_Previews: PreviewProvider {
    static var previews: some View {
        GroceryRow(item: RecipeItem.example)
    }
}
