//
//  ContentView.swift
//  FoodWorkshop
//
//  Created by Natalia Wcisło on 08/10/2020.
//

import SwiftUI

struct ContentView: View {
    let items: [Product]
    @State private var selectedTabIndex: Int = 0
   
    var body: some View {
        VStack{
            VStack{
                //                SearchView(text: $searchText)
                //                    .padding(.top, -30)
                TabsView(selectedTabIndex: $selectedTabIndex)
            }
    
            VStack{
                switch selectedTabIndex {
                case 0:
                    ProductView(items: products)
                case 1:
                    ProducerView(items: producers)
                case 2:
                    ProductView(items: products)
                case 3:
                    LocalizationView()
                case 4:
                    InfoView()
                default:
                    EmptyView()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(items: products)
    }
}
