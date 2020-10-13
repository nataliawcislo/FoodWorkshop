//
//  ListView.swift
//  FoodWorkshop
//
//  Created by Natalia Wcisło on 12/10/2020.
//

import SwiftUI

struct ProductView: View {
    let items: [Product]
    var body: some View {
       ScrollView{
            ForEach(items, id: \.id) { item in
                ZStack {
                    Image(item.image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 200)
                       .cornerRadius(1)
                        .overlay(
                            Rectangle()
                                .cornerRadius(1)
                                .opacity(0)
                        )
                    Text(item.name)
                        .font(.system(size: 32, weight: .medium, design: .rounded))
                        
                        .foregroundColor(.white)
                }
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView(items: products)
    }
}
